#!/bin/bash

ansible-playbook ../playbooks/pip_docker_module.yml && \
ansible-playbook ../playbooks/docker_deploy_ubuntu.yml && \
ansible-playbook ../playbooks/docker_deploy_nginx.yml && \
ansible-playbook ../playbooks/docker_deploy_jenkins.yml
