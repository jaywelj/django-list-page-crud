from django.shortcuts import render, redirect
from .forms import SignUpForm
from django.contrib.auth import authenticate, login

def signup(request):
	if request.method == "POST":
		form = SignUpForm(request.POST)
		if form.is_valid():
			new_user = form.save()
			new_user = authenticate(username=form.cleaned_data["username"],password=form.cleaned_data["password1"])
			login(request, new_user)
			username = form.cleaned_data.get("username")
			return redirect("your_trainers")
	else:
		form = SignUpForm()
	return render(request, "accounts/signup.html", {"form":form})