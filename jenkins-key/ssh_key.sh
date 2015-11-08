#!/bin/bash

# Check for existence of passphrase
if [ ! -f id_rsa.pub ]; then
    ssh-keygen -t rsa -N "" -f $JENKINS_KEY/id_rsa
    echo "Execute ssh-keygen --[done]"
fi


