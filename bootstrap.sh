#/usr/env bash

# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install pyenv
pyenv install 3.10.8
~/.pyenv/versions/3.10.8/bin/python -m venv venv
source venv/bin/activate
pip install ansible
./playbook.yml