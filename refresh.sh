#!/usr/bin/env bash

echo "try to update the base box, ubuntu 18.04 LTS"
vagrant box update
echo "destroy the old box"
vagrant destroy -f
echo "up"
vagrant up

echo "a new instance is up and running, use vagrant ssh to login"
