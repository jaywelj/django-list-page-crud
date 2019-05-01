from django.db import models
from django import forms
from django.core.validators import MinValueValidator, MaxValueValidator
from django.contrib.auth.models import User
from django.db.models.signals import post_save
from django.dispatch import receiver


class Pokemon(models.Model):
	#list of pokemon types available
	type_list = [
		('BUG', 'BUG'),
		('DARK', 'DARK'),
		('DRAGON', 'DRAGON'),
		('ELECTRIC', 'ELECTRIC'),
		('FAIRY', 'FAIRY'),
		('FIGHTING', 'FIGHTING'),
		('FIRE', 'FIRE'),
		('FLYING', 'FLYING'),
		('GHOST','GHOST'),
		('GRASS', 'GRASS'),
		('GROUND','GROUND'),
		('ICE','ICE'),
		('NORMAL', 'NORMAL'),
		('POISON', 'POISON'),
		('PSYCHIC', 'PSYCHIC'),
		('ROCK', 'ROCK'),
		('STEEL', 'STEEL'),
		('WATER', 'WATER'),
		('???', '???'),
	]
	name = models.CharField(max_length=32)
	pokedex_no = models.IntegerField(unique=True)
	type1 = models.CharField(max_length=10, choices=type_list)
	type2 = models.CharField(max_length=10, choices=type_list, blank=True)
	photo = models.ImageField(upload_to="pokemon_photos", null=True)
	description = models.TextField(null=True)
	is_verified = models.BooleanField(default=False)

	def verify(self):
		self.is_verified = True


	def __str__(self):
		return self.name

class Trainer(models.Model):
	sex_choices = (
		('F', 'FEMALE'),
		('M', 'MALE'),
	)
	user = models.ForeignKey(User, on_delete=models.CASCADE, blank=True)
	photo = models.ImageField(upload_to="trainer_photos", blank=True)
	name = models.CharField(max_length=32, blank=True)
	sex = models.CharField(max_length=1, choices=sex_choices, blank=True)
	#Many to many relationship with intemnediary PokemonOwnership
	pokemons = models.ManyToManyField(Pokemon, through='PokemonOwnership', blank=True)

	def __str__(self):
		return self.name+" [USER: "+str(self.user)+"]"

#intermediary model for Trainer.pokemon
class PokemonOwnership(models.Model):
	sex_choices = (
		('F', 'FEMALE'),
		('M', 'MALE'),
		('G', 'GENDERLESS'),
	)
	shiny_choices = (
		(True, 'YES'),
		(False, 'NO'),
	)

	trainer = models.ForeignKey(Trainer, on_delete=models.CASCADE)
	pokemon = models.ForeignKey(Pokemon, on_delete=models.CASCADE)
	nickname =  models.CharField(max_length=32, blank=True)
	level = models.IntegerField(validators=[MinValueValidator(1),MaxValueValidator(100)])
	sex = models.CharField(max_length=1, choices=sex_choices)
	shiny = models.BooleanField(choices=shiny_choices, default=False)

	def __str__(self):
		return str(self.trainer) + "-" + str(self.pokemon)

# @receiver(post_save, sender=User)
# def createUserTrainer(sender, instance, created, **kwargs):
# 	if created:
# 		Trainer.objects.create(user=instance)

# @receiver(post_save, sender=User)
# def saveUserTrainer(sender, instance, **kwargs):
# 	instance.trainer.save()