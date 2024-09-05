#!/bin/bash

ansible-playbook pb.write.resource.files.yaml
docker run -v $PWD/test:/example --network clab --rm -it --name nita-robot juniper/nita-robot:23.12 /bin/bash -c "cd /example;robot tests/"