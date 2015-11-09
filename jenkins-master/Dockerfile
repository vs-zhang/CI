FROM jenkins
MAINTAINER "vincent" <vincentzhang1209@gmail.com>

COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt
ENV HOME $JENKINS_HOME
ENV JENKINS_KEY /var/jenkins_key

USER root
RUN apt-get update 
RUN apt-get install -y graphviz npm vim

ENV share /usr/share/jenkins
COPY start.sh $share/start.sh
RUN chown -R 1000:1000 $share/start.sh
RUN chmod +x $share/start.sh

USER jenkins
CMD bash $share/start.sh; 'bash'
