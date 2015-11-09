#!/bin/bash

if  [ ! -d $JENKINS_HOME/.ssh ]
then
    mkdir $JENKINS_HOME/.ssh
    chmod 700 $JENKINS_HOME/.ssh
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

# start jenkins
java=java
if test -n "$JAVA_HOME"; then
    java="$JAVA_HOME/bin/java"
fi
exec "$java" -jar /usr/share/jenkins/jenkins.war
