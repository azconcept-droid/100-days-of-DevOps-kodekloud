#!/bin/bash
# Add a new feature to the games repository by creating a new branch,
# adding a file,
# committing the change,
# and merging it back to master
sudo git checkout -b nautilus

sudo cp /tmp/index.html .
sudo git add index.html 
sudo git commit -m "add welcome page"
sudo git push --set-upstream origin nautilus

sudo git checkout master
sudo git merge nautilus
sudo git push