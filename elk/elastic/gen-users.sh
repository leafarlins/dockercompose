#!/bin/bash

POD=$(docker ps | grep elasticsearch | awk '{print $1}')

docker exec $POD bin/elasticsearch-setup-passwords auto -b > output-passwords.txt
