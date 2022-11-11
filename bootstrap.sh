#!/usr/bin/env bash

if ! command -v brew &> /dev/null
then
  echo "Missing Homebrew, installing..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  # Make sure "brew" command in the PATH
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

if ! command -v ansible-playbook &> /dev/null
then
  echo "Missing Ansible, installing..."
  brew install ansible
fi

echo "Running playbook..."
ansible-playbook playbook.yml
