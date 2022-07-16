#!/usr/bin/env bash
#
# Copyright (C) 2022 a Himemorii <himemorii@mail.com>
#

msg() {
	echo
	echo -e "\e[1;32m$*\e[0m"
	echo
}

msg "\\\ Starting git setup ///"
# Git Identity
git config --global core.editor "nano" # termux only
git config --global user.name "Egii"
git config --global user.email "regidesoftian@gmail.com"
git config --global credential.helper store

# Git Alias
git config --global alias.c "commit -s"
git config --global alias.ca "cherry-pick --abort"
git config --global alias.cr "cherry-pick --signoff"
git config --global alias.p "push -f"
git config --global alias.cc "cherry-pick --continue"
git config --global alias.cs "cherry-pick --skip"
git config --global alias.cp "cherry-pick"

msg "\\\ Git setup success ///"
