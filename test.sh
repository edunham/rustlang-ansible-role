#!/bin/sh

bold=`tput bold`
normal=`tput sgr0`
red=`tput setaf 1`
green=`tput setaf 2`

# Provision the Vagrant machines with Ansible.
vagrant up

# Rerun the same Ansible playbook to test for idempotency.
ansible-playbook test.yml -i vagrant-inventory \
  -u vagrant --private-key=.vagrant/machines/ap/virtualbox/private_key \
  -vv | grep -q 'changed=0.*failed=0' \
    && (echo "Idempotence test: ${bold}${green}pass${normal}" && exit 0) \
    || (echo "Idempotence test: ${bold}${red}fail${normal}" && exit 1)

vagrant destroy