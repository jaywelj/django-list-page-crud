from django import forms
from .models import Trainer, Pokemon, PokemonOwnership

class TrainerForm(forms.ModelForm):
	class Meta:
		model = Trainer
		fields = ('name', 'sex', 'photo', )

class PokemonForm(forms.ModelForm):
	class Meta:
		model = Pokemon
		fields = ('pokedex_no', 'name', 'type1', 'type2', 'photo', 'description', )

class PokemonOwnershipForm(forms.ModelForm):
	class Meta:
		model = PokemonOwnership
		fields = ('pokemon', 'nickname', 'level', 'sex', 'shiny',)		
