#!/bin/bash

# Script to create a GitHub release for the current version
# Usage: ./create-release.sh [version]
# If version is not provided, reads from VERSION file

set -e

# Read version from VERSION file or use provided version
if [ -z "$1" ]; then
    VERSION=$(cat VERSION | tr -d '[:space:]')
else
    VERSION="$1"
fi

if [ -z "$VERSION" ]; then
    echo "Error: Could not determine version"
    exit 1
fi

echo "Creating release for version: $VERSION"
echo ""

# Check if we're in a git repository
if ! git rev-parse --git-dir > /dev/null 2>&1; then
    echo "Error: Not in a git repository"
    exit 1
fi

# Check if tag already exists
if git rev-parse "v$VERSION" > /dev/null 2>&1; then
    echo "Warning: Tag v$VERSION already exists"
    read -p "Do you want to continue anyway? (y/n) " -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        exit 1
    fi
fi

# Check if there are uncommitted changes
if ! git diff-index --quiet HEAD --; then
    echo "Warning: You have uncommitted changes"
    read -p "Do you want to continue anyway? (y/n) " -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        exit 1
    fi
fi

# Create and push tag
echo "Creating tag v$VERSION..."
git tag -a "v$VERSION" -m "Release version $VERSION"

echo "Pushing tag to remote..."
git push origin "v$VERSION"

echo ""
echo "✓ Release tag v$VERSION has been pushed!"
echo "The GitHub Actions workflow will automatically create the release with downloadable assets."
echo ""
echo "You can also manually trigger the workflow at:"
echo "https://github.com/$(git config --get remote.origin.url | sed 's/.*github.com[:/]\(.*\)\.git/\1/')/actions/workflows/release.yml"

