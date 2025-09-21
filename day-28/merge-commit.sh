#!/bin/bash
# merge commit
cd /usr/src/kodekloudrepos/blog/
sudo git log
sudo git branch
sudo git checkout master
sudo git branch
sudo git log
sudo git merge 928f39228a0cfb0626a1427f093fde77d8630543
sudo git log
sudo git push
