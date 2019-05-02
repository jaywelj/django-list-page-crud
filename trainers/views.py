from django.shortcuts import render, redirect, get_object_or_404
from .models import Trainer, Pokemon, PokemonOwnership
from .forms import TrainerForm, PokemonForm, PokemonOwnershipForm
from django.contrib.auth.decorators import login_required
from itertools import chain
from django.contrib import messages

# Create your views here.

@login_required
def home(request):
	trainers = Trainer.objects.filter(user=request.user.id)
	return render(request, "trainers/home.html", {"trainers":trainers})

@login_required	
def your_trainers(request):
	trainers = Trainer.objects.filter(user=request.user.id)
	return render(request, "trainers/home.html", {"trainers":trainers})

@login_required	
def create_trainer(request):
	if request.method == "POST":
		form = TrainerForm(request.POST, request.FILES)
		if form.is_valid():
			post = form.save(commit=False)
			post.user = request.user
			post.save()
			messages.success(request, "Trainer added!")
			return redirect("home")
	else:
		form = TrainerForm()
	return render(request, "trainers/create_trainer.html", {"form":form})

@login_required	
def edit_trainer(request, pk):
	trainer =  get_object_or_404(Trainer, pk=pk)
	if request.method == "POST":
		form = TrainerForm(request.POST, request.FILES, instance=trainer)
		if form.is_valid():
			form.save()
			messages.success(request, "Trainer saved!")
			return redirect("/#" + str(trainer.pk))
	else:
		form = TrainerForm(instance=trainer)
	return render(request, "trainers/create_trainer.html", {"form":form})

@login_required	
def remove_trainer(request, pk):
	trainer = get_object_or_404(Trainer, pk=pk)
	trainer.delete()
	messages.success(request, "Trainer deleted!")
	return redirect("home")

@login_required	
def pokemon_list(request):
	try:
		q = request.GET.get("q")
	except:
		q = None
	if q:
		pokemons = Pokemon.objects.filter(name__unaccent__icontains=q)
		context = {"pokemons": pokemons}
		template = "trainers/pokemon_list.html"
	else:
		pokemons = Pokemon.objects.all().order_by("pokedex_no")
		context = {"pokemons": pokemons}
		template = "trainers/pokemon_list.html" 
	return render(request, template, context)

@login_required	
def add_pokemon(request):
	if request.method == "POST":
		form = PokemonForm(request.POST, request.FILES)
		if form.is_valid():
			pokemon = form.save(commit=False)
			pokemon.name = pokemon.name.capitalize()
			pokemon.save()
			messages.success(request, 'Pokemon added, needs staff verification.')
			return redirect("pokemon_list")
	else:
		form = PokemonForm()
	return render(request, "trainers/add_pokemon.html", {"form":form})

@login_required	
def edit_pokemon(request, pk):
	pokemon = get_object_or_404(Pokemon, pk=pk)
	if request.method == "POST":
		form = PokemonForm(request.POST, request.FILES, instance=pokemon)
		if form.is_valid():
			pokemon = form.save(commit=False)
			pokemon.name = pokemon.name.capitalize()
			pokemon.save()
			messages.success(request, "Pokemon info updated!")
			return redirect("/pokemon_list#"+str(pokemon.pk))
	else:
		form = PokemonForm(instance=pokemon)
	return render(request, "trainers/add_pokemon.html", {"form":form})

@login_required	
def remove_pokemon(request, pk):
	pokemon = get_object_or_404(Pokemon, pk=pk)
	pokemon.delete()
	messages.success(request, "Pokemon removed!")
	return redirect("pokemon_list")

@login_required	
#verify pokemon record validity for admin
def verify_pokemon(request, pk):
	pokemon = get_object_or_404(Pokemon, pk=pk)
	pokemon.verify()
	pokemon.save()
	messages.success(request, "Pokemon Verified")
	return redirect("pokemon_list")

#search bar views
@login_required	
def search(request, search, pk):
	#get search query from link
	try:
		query = request.GET.get("q")
	except:
		query = None

	#checks what page to search and display
	if search == "pokemon_list":	
		if query:
			pokemons = Pokemon.objects.filter(name__icontains=query).order_by("pokedex_no")
		else:
			pokemons = Pokemon.objects.all().order_by("pokedex_no")
		context = {"pokemons": pokemons}
		template = "trainers/pokemon_list.html" 
	elif search == "trainer":
		if query:
			trainers = Trainer.objects.filter(user=request.user.id).filter(name__icontains=query)
		else:
			trainers = Trainer.objects.filter(user=request.user.id)
		context = {"trainers": trainers}
		template = "trainers/your_trainers.html" 
	elif search == "your_pokemons":
		if query:
			pokemons = PokemonOwnership.objects.filter(trainer__user = pk, pokemon__name__icontains=query)
		else:
			pokemons = PokemonOwnership.objects.filter(trainer__user = pk)
		context = {"pokemons": pokemons}
		template = "trainers/your_pokemons.html"  
	elif search == "trainer_pokemon_list":
		trainer = Trainer.objects.get(pk=pk)
		if query:
			pokemons = PokemonOwnership.objects.filter(trainer=pk, pokemon__name__icontains=query)
		else:
			pokemons = PokemonOwnership.objects.filter(trainer=pk)
		context = {"pokemons": pokemons, "trainer":trainer}
		template = "trainers/trainer_pokemon_list.html"
	context.update({"query":query})	  	
	return render(request, template, context)

@login_required	
def trainer_pokemon_list(request, pk):
	trainer = Trainer.objects.get(pk=pk)
	if not trainer.user == request.user:
		return redirect("home")
	pokemons = PokemonOwnership.objects.filter(trainer=pk)
	# pokemons = trainer.pokemons.all()
	return render(request, "trainers/trainer_pokemon_list.html", {"pokemons":pokemons, "trainer":trainer})

@login_required	
def trainer_add_pokemon(request, pk):
	trainer = get_object_or_404(Trainer, pk=pk)
	if request.method == "POST":
		form = PokemonOwnershipForm(request.POST)
		if form.is_valid():
			pokemon = form.save(commit=False)
			pokemon.trainer = trainer
			pokemon.save()
			messages.success(request, "New pokemon added to trainer!")
			return redirect("trainer_pokemon_list", pk=trainer.pk)
	else:
		form = PokemonOwnershipForm	
	return render(request, "trainers/trainer_add_pokemon.html", {"form":form, "trainer":trainer})


@login_required	
def release_trainer_pokemon(request, pk):
	pokemon = get_object_or_404(PokemonOwnership, pk=pk)
	trainer = pokemon.trainer.id
	pokemon.delete()
	messages.success(request, "Pokemon Released!")
	return redirect("trainer_pokemon_list", pk=trainer)

@login_required	
def your_pokemons(request, pk):
	pokemons = PokemonOwnership.objects.filter(trainer__user = pk)
	return render(request, "trainers/your_pokemons.html", {"pokemons":pokemons})

