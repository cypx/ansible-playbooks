# Ansible playbooks for Debian

## Installation

```sh
aptitude update
aptitude upgrade
aptitude install python-pip python-dev subversion
easy_install markupsafe
pip install ansible
mkdir -p /etc/ansible/playbooks
svn export https://github.com/cypx/ansible-playbooks/trunk/debian /etc/ansible/playbooks
```
