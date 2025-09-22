#!/bin/bash
# git stash
sudo git stash list
sudo git branch
git stash show -p stash@{1}
sudo git stash show -p stash@{1}
sudo git log
sudo git stash apply stash@{1} 
git commit -m "Restored changes from stash@{1}"
sudo git commit -m "Restored changes from stash@{1}"
git status
sudo git status
sudo git push