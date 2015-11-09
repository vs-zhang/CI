#!/bin/bash

if  [ ! -d $HOME/.ssh ]
then
    mkdir $HOME/.ssh
    chmod 700 $HOME/.ssh
    echo "Create .ssh directory --[done]"
else
    echo "Directory .ssh already exists!"
fi

if [ ! -d $HOME/.ssh/authorized_keys ]
then
    mkdir $HOME/.ssh/authorized_keys
    chmod 600 $HOME/.ssh/authorized_keys
    echo "Create .ssh/authorized_keys directory --[done]"
else
    echo "Directory .ssh/authorized_keys already exists!"
fi

if [ ! -d $HOME/.ssh/authorized_keys/id_rsa.pub ]
then
    cp $JENKINS_KEY/id_rsa.pub $JENKINS_HOME/.ssh/authorized_keys/id_rsa.pub
    echo "Copy public key to authorized_keys -- [done]"
else
    echo "Public key already in authorized_keys!"
fi
