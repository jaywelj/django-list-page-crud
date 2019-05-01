from django.urls import path
from . import views

urlpatterns = [
	path("", views.home, name="home"),
	path("your_trainers/", views.your_trainers, name="your_trainers"),
	path("pokemon_list/", views.pokemon_list, name="pokemon_list"),
	path("search/<str:search>/<int:pk>/", views.search, name="search"),
	path("pokemon_list/add_pokemon/", views.add_pokemon, name="add_pokemon"),
	path("pokemon_list/edit_pokemon/<int:pk>/", views.edit_pokemon, name="edit_pokemon"),
	path("pokemon_list/remove_poken/<int:pk>/", views.remove_pokemon, name="remove_pokemon"),
	path("pokemon_list/verify_pokemon/<int:pk>/", views.verify_pokemon, name="verify_pokemon"),
	path("your_trainers/create_trainer/", views.create_trainer, name="create_trainer"),
	path("your_trainers/edit_trainer/<int:pk>/", views.edit_trainer, name="edit_trainer"),
	path("your_trainers/remove_trainer/<int:pk>/", views.remove_trainer, name="remove_trainer"),
	path("trainer_pokemon_list/<int:pk>/", views.trainer_pokemon_list, name="trainer_pokemon_list"),
	path("trainer_pokemon_list/trainer_add_pokemon/<int:pk>", views.trainer_add_pokemon, name="trainer_add_pokemon"),
	path("trainer_pokemon_list/release_owned_pokemon/<int:pk>/", views.release_trainer_pokemon, name="release_trainer_pokemon"),
	path("your_pokemons/<int:pk>", views.your_pokemons, name="your_pokemons"),
]