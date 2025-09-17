#!/bin/bash
# Manage git remotes by adding a new remote repository named dev_cluster
# pointing to /opt/xfusioncorp_cluster.git

git remote add dev_cluster /opt/xfusioncorp_cluster.git
cp /tmp/index.html .
git add index.html
git commit -m "Add index.html file"
git push dev_cluster master