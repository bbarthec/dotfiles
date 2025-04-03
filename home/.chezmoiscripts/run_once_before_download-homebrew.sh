#!/bin/bash

# NOTICE
# This script installs `homebrew` (https://brew.sh/)

set -eufo pipefail

bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"