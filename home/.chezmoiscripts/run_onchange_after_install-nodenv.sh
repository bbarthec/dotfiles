#!/bin/bash

# Exit on error
set -e

echo "Setting up Node.js environment with nodenv..."

# Get the latest LTS version available through nodenv
LATEST_LTS_VERSION=$(nodenv install -l | grep -E '^[0-9]+\.[0-9]+\.[0-9]+$' | grep -E '^[0-9]+\.([0-9]+)' | sort -V | tail -n 1)

if [ -z "$LATEST_LTS_VERSION" ]; then
    echo "Error: Could not determine the latest LTS version"
    exit 1
fi

echo "Latest LTS version detected: $LATEST_LTS_VERSION"

# Check if the specified Node.js version is already installed
if ! nodenv versions | grep -q "$LATEST_LTS_VERSION"; then
    echo "Installing Node.js $LATEST_LTS_VERSION..."
    nodenv install "$LATEST_LTS_VERSION"
else
    echo "Node.js $LATEST_LTS_VERSION is already installed"
fi

# Set the global Node.js version
echo "Setting global Node.js version to $LATEST_LTS_VERSION..."
nodenv global "$LATEST_LTS_VERSION"

# Verify the installation
echo "Verifying Node.js installation..."
node --version
npm --version

echo "Node.js environment setup completed!" 