#!/bin/bash

if  [ ! -d $HOME/.ssh ]
then
    mkdir $HOME/.ssh
    chmod 700 $HOME/.ssh
    echo "Create .ssh directory --[done]"
else
    echo "Directory .ssh already exists!"
fi

if [ ! -f $HOME/.ssh/authorized_keys ]
then
    touch $HOME/.ssh/authorized_keys
    cat $JENKINS_KEY/id_rsa.pub >> $HOME/.ssh/authorized_keys
    chmod 600 $HOME/.ssh/authorized_keys
    echo "Create .ssh/authorized_keys --[done]"
else
    echo ".ssh/authorized_keys already exists!"
fi

# start ssh
sudo service sshd start
