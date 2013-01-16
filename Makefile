all: utils git vim zsh python node ruby latex

.PHONY: utils git vim zsh python node ruby latex update

update:
	@echo 'Updating your system repositories...'
	@aptitude update

utils:
	@echo 'Setting up Utils...'
	@aptitude install terminator 
	@cp terminator/config ~/.config/terminator/
	@aptitude install transmission 

git:
	@echo 'Setting up Git...'
	@aptitude install git
	@cp git/gitignore ~/.gitignore
	@git config --global user.name "Maxime Gaudin"
	@git config --global alias.st "status"
	@git config --global alias.lg "log -20 --graph --pretty "format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date "relative"
	@git config --global alias.dt "difftool --no-prompt"
	@git config --global alias.mt "mergetool --no-prompt"
	@git config --global alias.outgoing "log --graph --pretty "format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date "relative origin/dev..dev"
	@git config --global color.branch "auto"
	@git config --global color.diff "auto"
	@git config --global color.interactive "auto"
	@git config --global color.status "auto"
	@git config --global user.name "Maxime Gaudin"
	@git config --global user.email "gaudin.maxime@gmail.com"
	@git config --global core.editor "vim"
	@git config --global merge.tool "vim"
	@git config --global mergetool.vim.cmd "vim +Gdiff "$MERGED""
	@git config --global core.repositoryformatversion "0"
	@git config --global core.filemode "true"
	@git config --global core.bare "false"
	@git config --global core.logallrefupdates "true"
	@git config --global remote.origin.fetch "+refs/heads/*:refs/remotes/origin/*"
	@git config --global remote.origin.url "https://github.com/MaximeGaudin/dev_env"
	@git config --global branch.master.remote "origin"
	@git config --global branch.master.merge "refs/heads/master"

vim:
	@echo 'Setting up Vim...'
	@echo TODO

zsh:
	@echo 'Setting up ZSH...'
	@wget http://formation-debian.via.ecp.fr/fichiers-config/zshrc
	@mv zshrc ~/.zshrc
	@wget http://formation-debian.via.ecp.fr/fichiers-config/zshenv
	@mv zshenv ~/.zshenv
	@wget http://formation-debian.via.ecp.fr/fichiers-config/zlogin
	@mv zlogin ~/.zlogin
	@wget http://formation-debian.via.ecp.fr/fichiers-config/zlogout
	@mv zlogout ~/.zlogout
	@wget http://formation-debian.via.ecp.fr/fichiers-config/dir_colors
	@mv dir_colors ~/.dir_colors
	@git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
	@cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
	@chsh -s /bin/zsh
	@echo 'alias l="\ls --color"' >> ~/.zshrc
	@echo 'alias ls="ls -al --color"' >> ~/.zshrc
	@echo 'ZSH_THEME="agnoster"' >> ~/.zshrc
	@echo 'plugin=(git)' >> ~/.zshrc
	@cp oh-my-zsh/agnoster.zsh-theme ~/.oh-my-zsh/themes/


python:
	@echo 'Setting up Python...'
	@aptitude install python-pip
	@pip install virtualenv

node:
	@echo 'Setting up NodeJS...'
	@aptitude install nodejs

ruby:
	@echo 'Setting up Ruby...'
	@echo TODO

latex:
	@echo 'Setting up LaTeX...'
	@echo TODO
