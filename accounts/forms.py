from django import forms
from django.contrib.auth.models import User
from django.contrib.auth.forms import UserCreationForm

class SignUpForm(UserCreationForm):
	email = forms.EmailField()
	firstname = forms.CharField(max_length=64)
	lastname = forms.CharField(max_length=64)

	class Meta:
		model = User
		fields = ["username", "firstname", "lastname", "password1", "password2",]