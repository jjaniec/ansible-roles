#!/bin/bash

ansible-playbook playbooks/pip_docker.yml && \
ansible-playbook playbooks/docker_pull_ubuntu.yml && \
ansible-playbook playbooks/docker_pull_nginx.yml && \
ansible-playbook playbooks/docker_pull_jenkins.yml || exit 1

ansible-playbook playbooks/start_nginx_jenkins_ubuntu_containers.yml
