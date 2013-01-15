all: utils git vim zsh python node ruby latex

.PHONY: utils git vim zsh python node ruby latex

utils:
	@echo 'Setting up Utils...'
	@aptitude install terminator 
	@aptitude install transmission 

git:
	@echo 'Setting up Git...'
	@aptitude install git
	@git config --global user.name "Maxime Gaudin"
	@git config --global user.email "gaudin.maxime@gmail.com"
	@cp git/gitignore ~/.gitignore
	@git config --global core.excludesfile '~/.gitignore'

vim:
	@echo 'Setting up Vim...'
	@echo TODO

zsh:
	@echo 'Setting up ZSH...'
	@echo TODO

python:
	@echo 'Setting up Python...'
	@aptitude install python-pip
	@pip install virtualenv

node:
	@echo 'Setting up NodeJS...'
	@echo TODO

ruby:
	@echo 'Setting up Ruby...'
	@echo TODO

latex:
	@echo 'Setting up Ruby...'
	@echo TODO
