#!/bin/bash

if  [ ! -d $JENKINS_HOME/.ssh ]
then
    mkdir $JENKINS_HOME/.ssh
    echo "Create .ssh directory --[done]"
else
    echo "Directory .ssh already exists!"
fi

if [ ! -f $JENKINS_HOME/.ssh/id_rsa ]
then
    cp $JENKINS_KEY/id_rsa $JENKINS_HOME/.ssh/id_rsa
    echo "Copy private key to $JENKINS_HOME/.ssh -- [done]"
else
    echo "Private key already in $JENKINS_HOME/.ssh!"
fi
