#!/bin/bash

# Check for existence of passphrase
if [ ! -f id_rsa.pub ]; then
	ssh-keygen -t rsa -N "" -f id_rsa
        echo "Execute ssh-keygen --[done]"
fi


cp id_rsa jenkins-master
echo "Copy private key to master folder --[done]"

cp id_rsa.pub jenkins-slave
echo "Copy public key to slave folder --[done]"
