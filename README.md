# ansible-roles
Some playbooks and roles to learn ansible basics

ansible-lint: [![Build Status](https://travis-ci.com/jjaniec/ansible-playbooks.svg?token=vUjpUKrWHJiKAfUBFMHq&branch=master)](https://travis-ci.com/jjaniec/ansible-playbooks)

---

### Compatibility

| Role \ OS (OS family) | Ubuntu 14 (Debian) |  Centos 7 (Redhat) |         Arch Linux         |
|:---------------------:|:------------------:|:------------------:|:--------------------------:|
|         apache        | :heavy_check_mark: | :heavy_check_mark: |             :x:            |
|          curl         | :heavy_check_mark: | :heavy_check_mark: |     :heavy_check_mark:     |
|     datadog_agent     | :heavy_check_mark: | :heavy_check_mark: | :x: (agent not compatible) |
|     datadog_apache    | :heavy_check_mark: | :heavy_check_mark: | :x: (agent not compatible) |
|     datadog_mysql     | :heavy_check_mark: | :heavy_check_mark: | :x: (agent not compatible) |
|         docker        |                    |                    |             :x:            |
|       firewalld       |          -         | :heavy_check_mark: |              -             |
|          git          | :heavy_check_mark: | :heavy_check_mark: |     :heavy_check_mark:     |
|         mysql         | :heavy_check_mark: | :heavy_check_mark: |             :x:            |
|         nginx         | :heavy_check_mark: |         :x:        |             :x:            |
|          php5         | :heavy_check_mark: | :heavy_check_mark: |             :x:            |
|          php7         | :heavy_check_mark: | :heavy_check_mark: |             :x:            |
|       wordpress       | :heavy_check_mark: | :heavy_check_mark: |             :x:            |
|          ufw          | :heavy_check_mark: |          -         |             :x:            |

### Notes

- For datadog roles, don't forget to set $DD_API_KEY. Hostnames will be set to "ansible.{{ name of host in your hosts file }}"

- Some changes may be needed if roles are used on different versions of ubuntu 14 and centos 7, the goal here was mainly
 to learn using the tool
