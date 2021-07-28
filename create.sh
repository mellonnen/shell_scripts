#!/bin/sh

# Creates a new private project on Github
create () {
cd ~/projects
gh repo create "$1" --enable-issues 
cd "$1"
git remote rm origin
git remote add origin git@github.com:"$(git config --get user.name)"/"$1".git
touch README.md
git add .
git commit -m "inital commit"
git push --set-upstream origin master
}
