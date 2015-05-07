## rustlang-ansible-role [![Build Status](https://travis-ci.org/alliedplatform/rustlang-ansible-role.png)](https://travis-ci.org/alliedplatform/rustlang-ansible-role)

Ansible role for installing the Rust compiler.

#### Supported Platforms

- Ubuntu 14.04 LTS (x86-64)

#### Requirements

- Python 2.7 (required to run Ansible)
- Ansible 1.9 or greater.

#### Role Dependencies

None.

#### Variables

##### Required variables

None.

##### Variable files

None.

#### Testing

##### Local tests

A Vagrantfile has been included with this project to provision a virtual machine with the Ansible role using some test data. The `test.sh` script will run the Ansible playbook against each machine after it is first provisioned. This is to ensure that the plays are structured for idempotency (i.e. that there are no changes to the system if the same playbook is run twice with the same inputs). Please execute the following steps to use the `test.sh` script:

1. Provide the `test.sh` script with execute permissions.

```
$ chmod +x test.sh
```

2. Run the `test.sh` script.

```
$ ./test.sh
```

To destroy the Vagrant virtual machine after the provisioning process is complete, execute `vagrant destroy` and follow the prompts.

##### Automated tests

Automated tests to check the correctness of the Ansible playbook syntax and the idempotency of the role are executed after a commit to GitHub. These automated tests are performed by [Travis CI](https://travis-ci.org/).

#### Notes

None.

#### License

The content of this repository is licensed under the [The MIT License (MIT)](http://opensource.org/licenses/MIT).
