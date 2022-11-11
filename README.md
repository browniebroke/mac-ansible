# mac-ansible

Configure my macOS the way I like it. That way, I can wipe and re-install with less effort. 

Adapted version of Adam Johnson's Ansible scripts. See his [blog post](https://adamj.eu/tech/2019/03/20/how-i-provision-my-macbook-with-ansible/).

## Getting Started

One time setup, to start from a clean slate:

1. Install Xcode: `xcode-select --install`
2. Download & extract: 
   ```
   curl -L https://github.com/browniebroke/mac-ansible/archive/main.tar.gz | tar -xz
   mv mac-ansible-main mac-ansible
   cd mac-ansible
   ```
3. Run `./bootstrap.sh`

## Running the playbook

```bash 
ansible-playbook playbook.yml
```

## Fork! Copy! Adapt!

This is distributed under the Unlicense so you can do whatever you want with
it, see LICENSE.
