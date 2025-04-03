#!/bin/bash

# Exit on error
set -e

# Define the base directory for repositories
REPOS_DIR="$HOME/Work"

# Create the repositories directory if it doesn't exist
mkdir -p "$REPOS_DIR"

# Define repositories to clone (add or modify as needed)
repos=(
    "sporting-life" "git@github.com:sporting-life/sporting-life-mobile.git"
)

# Function to check if a repository exists and is properly initialized
repo_exists() {
    local repo_path=$1
    if [ -d "$repo_path" ] && [ -d "$repo_path/.git" ]; then
        return 0
    else
        return 1
    fi
}

# Function to clone a repository
clone_repo() {
    local repo_name=$1
    local repo_url=$2
    local repo_path="$REPOS_DIR/$repo_name"

    if ! repo_exists "$repo_path"; then
        echo "Cloning $repo_name..."
        git clone "$repo_url" "$repo_path"
        echo "Successfully cloned $repo_name"
    else
        echo "Repository $repo_name already exists at $repo_path"
    fi
}

# Log start of script execution
echo "Starting repository cloning process..."

# Iterate through the repos array in pairs
for ((i=0; i<${#repos[@]}; i+=2)); do
    repo_name="${repos[i]}"
    repo_url="${repos[i+1]}"
    clone_repo "$repo_name" "$repo_url"
done

echo "Repository cloning process completed!" 