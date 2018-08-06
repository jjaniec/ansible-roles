# ansible-roles
Some playbooks and roles to learn ansible basics

ansible-lint: [![Build Status](https://travis-ci.com/jjaniec/ansible-roles.svg?token=vUjpUKrWHJiKAfUBFMHq&branch=master)](https://travis-ci.com/jjaniec/ansible-roles)

---

### Compatibility

| Role \ OS (OS family) | Ubuntu 14 (Debian) |  Centos 7 (Redhat) |      Arch Linux (todo)     |
|:---------------------:|:------------------:|:------------------:|:--------------------------:|
|         apache        | :heavy_check_mark: | :heavy_check_mark: |             :x:            |
|     datadog_agent     | :heavy_check_mark: | :heavy_check_mark: | :x: (agent not compatible) |
|     datadog_apache    | :heavy_check_mark: | :heavy_check_mark: | :x: (agent not compatible) |
|     datadog_mysql     | :heavy_check_mark: | :heavy_check_mark: | :x: (agent not compatible) |
|         docker        | :heavy_check_mark: | :heavy_check_mark: |             :x:            |
|         mysql         | :heavy_check_mark: | :heavy_check_mark: |             :x:            |
|         nginx         | :heavy_check_mark: |         :x:        |             :x:            |
|          php5         | :heavy_check_mark: | :heavy_check_mark: |             :x:            |
|          php7         | :heavy_check_mark: | :heavy_check_mark: |             :x:            |
|       wordpress       | :heavy_check_mark: | :heavy_check_mark: |             :x:            |

### Notes

- For datadog roles, don't forget to set $DD_API_KEY. Hostnames will be set to "ansible.{{ name of host in your hosts file }}"

- Some changes may be needed if roles are used on different versions of ubuntu 14 and centos 7, the goal here was mainly
 to learn using the tool

#### Sandbox mode

```
ansible-galaxy install -r requirements.yml
sudo VAGRANT_VAGRANTFILE=sandbox/Vagrantfile vagrant up # see sandbox/vagrant_hosts.yml
ANSIBLE_COW_SELECTION=random ansible-playbook -i sandbox/hosts playbooks/test_roles.yml --tags "wordpress"
```
