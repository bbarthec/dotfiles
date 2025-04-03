#!/bin/bash

# NOTICE
# This script installs `homebrew` (https://brew.sh/)

set -eufo pipefail

# Check if Homebrew is already installed
if command -v brew >/dev/null 2>&1; then
    echo "Homebrew is already installed, skipping installation."
    exit 0
fi

bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"