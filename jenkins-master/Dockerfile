FROM jenkins
MAINTAINER "vincent" <vincentzhang1209@gmail.com>

COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt
ENV HOME $JENKINS_HOME
ADD id_rsa $JENKINS_HOME/.ssh/id_rsa

USER root
RUN apt-get update 
RUN apt-get install -y graphviz npm vim

USER jenkins
