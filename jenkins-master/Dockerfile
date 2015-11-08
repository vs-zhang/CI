FROM jenkins
MAINTAINER "vincent" <vincentzhang1209@gmail.com>

COPY plugins.txt /usr/share/jenkins/plugins.txt
#RUN /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt
ENV HOME $JENKINS_HOME
ENV JENKINS_KEY /var/jenkins_key

USER root
RUN apt-get update 
RUN apt-get install -y graphviz npm vim

COPY start.sh $JENKINS_HOME/start.sh
RUN chown -R 1000:1000 $JENKINS_HOME/start.sh
RUN chmod +x $JENKINS_HOME/start.sh

USER jenkins
CMD bash $JENKINS_HOME/start.sh; 'bash'
