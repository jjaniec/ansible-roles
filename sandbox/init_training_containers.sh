#!/bin/bash

ansible-playbook ../playbooks/pip_docker_module.yml && \
ansible-playbook ../playbooks/docker_pull_ubuntu.yml && \
ansible-playbook ../playbooks/docker_pull_nginx.yml && \
ansible-playbook ../playbooks/docker_pull_jenkins.yml || exit 1

ansible-playbook start_training_containers.yml
