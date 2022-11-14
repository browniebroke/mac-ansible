#!/usr/bin/env bash

# Make sure potential locations of brew are in the path
export PATH="/opt/homebrew/bin:/usr/local/bin:$PATH"

if ! command -v brew &> /dev/null
then
  echo "Missing Homebrew, installing..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  # Set up brew environment
  eval "$(brew shellenv)"
fi

if ! command -v ansible-playbook &> /dev/null
then
  echo "Missing Ansible, installing..."
  brew install ansible
fi

echo "Running playbook..."
ansible-playbook playbook.yml
