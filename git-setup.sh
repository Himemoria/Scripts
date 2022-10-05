#!/usr/bin/env bash
#
# Script Setup Git
# Copyright (C) 2022 a Himemori <himemori@mail.com>
#

msg() {
	echo
	echo -e "\e[1;32m$*\e[0m"
	echo
}

msg "<<--- Starting Setup --->>"

##----------------------------------------------------------##
# Git Identity
git config --global core.editor "nano"
git config --global user.name "Himemori"
git config --global user.email "himemori@mail.com"
git config --global credential.helper store

##----------------------------------------------------------##
# Git Alias
git config --global alias.c "commit -s"
git config --global alias.cam "commit --am"
git config --global alias.ca "cherry-pick --abort"
git config --global alias.cr "cherry-pick --signoff"
git config --global alias.p "push -f"
git config --global alias.cc "cherry-pick --continue"
git config --global alias.cs "cherry-pick --skip"
git config --global alias.cp "cherry-pick"

##----------------------------------------------------------##
# Setup Change-id hooks
git config --global init.templatedir '~/.git-templates'
wget -q https://raw.githubusercontent.com/Himemoria/Scripts/master/commit-msg -O ~/.git-templates/hooks
chmod 755 ~/.git-templates/hooks/commit-msg
msg "<<--- Git Setup Succesfully --->>"
