#!/bin/bash
docker run --rm -it \
    -v ./inventory:/ansible/inventory \
    -v ./playbook.yml:/ansible/playbook.yml \
    -v /home/shoaibshaikh/.ssh/lab-kp-nv.pem:/ansible/private_key.pem \
    -v ./templates:/ansible/templates \
    shoaib1999/ansible:python-3.11 ansible-playbook -v -i ./inventory playbook.yml --extra-vars="host=aws"
# docker run --rm -it shoaib1999/ansible:python-3.11 ansible-playbook --help