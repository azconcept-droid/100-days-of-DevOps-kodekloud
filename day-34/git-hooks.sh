#!/bin/bash

# Step 1: Create the post-update hook in the BARE repository
echo "Creating post-update hook in bare repository..."

cat > /opt/beta.git/hooks/post-update << 'EOF'
#!/bin/bash

# Get the current date in the format YYYY-MM-DD
CURRENT_DATE=$(date +%Y-%m-%d)

# Create the release tag name
RELEASE_TAG="release-${CURRENT_DATE}"

# Check if master branch was updated
for ref in "$@"
do
    if [[ $ref == "refs/heads/master" ]]; then
        echo "Master branch updated. Creating release tag: ${RELEASE_TAG}"
        
        # We're in a bare repo, so use GIT_DIR
        cd /opt/beta.git
        
        # Set git identity for tagging
        export GIT_COMMITTER_NAME="natasha"
        export GIT_COMMITTER_EMAIL="natasha@stratos.xfusioncorp.com"
        
        # Create the tag on the latest commit of master
        git tag -a "${RELEASE_TAG}" -m "Release tag for ${CURRENT_DATE}" refs/heads/master
        
        echo "Release tag ${RELEASE_TAG} created successfully!"
    fi
done

exit 0
EOF

# Make the hook executable
chmod +x /opt/beta.git/hooks/post-update

echo "Post-update hook created in bare repository!"

# Step 2: Now work in the cloned repository
cd /usr/src/kodekloudrepos/beta

echo "Checking out master branch..."
git checkout master

echo "Merging feature branch into master..."
git merge feature

# Step 3: Push to trigger the hook
echo "Pushing changes to trigger the post-update hook..."
git push origin master

# Step 4: Fetch the tags created by the hook
echo -e "\nFetching tags from remote..."
git fetch --tags

# Verify the tag was created
echo -e "\nVerifying release tag creation..."
git tag -l "release-*"

echo -e "\nShowing tag details..."
git show release-$(date +%Y-%m-%d) --no-patch 2>/dev/null || echo "Tag details will be visible after fetch"

echo -e "\n✓ All tasks completed successfully!"
echo "The post-update hook in /opt/beta.git will create release tags automatically on master branch pushes."
