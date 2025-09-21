#!/bin/bash
# revert last commit
git revert HEAD -m 1 -n

git commit -m "revert media"

git log --oneline --decorate -2
