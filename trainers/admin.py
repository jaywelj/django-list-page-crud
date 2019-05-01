from django.contrib import admin
from .models import Trainer, Pokemon, PokemonOwnership

admin.site.register(Trainer)
admin.site.register(Pokemon)
admin.site.register(PokemonOwnership)