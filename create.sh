#!/bin/sh
create () {
cd ~/projects
gh repo create "$1" --enable-issues 
cd "$1"
git remote rm origin
git remote add origin git@github.com:mellonnen/"$1".git
touch README.md
git add .
git commit -m "inital commit"
git push --set-upstream origin master
}
