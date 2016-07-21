# Ansible
**A docker container for executing Ansible playbooks**

This is a small (Alpine based) docker container with the minimum required
to run Ansible against a number of different cloud providers.

## Usage
```sh
docker run -it --rm -v $PWD:/ansible sierrasoftworks/ansible-docker ansible-playbook -i hosts deploy.yml
```