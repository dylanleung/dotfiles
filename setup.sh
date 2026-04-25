#!/bin/bash
# setup.sh

echo "› 运行 brew bundle..."
brew bundle check || brew bundle install
