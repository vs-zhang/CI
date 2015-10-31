FROM busybox
MAINTAINER "Vincent" <vincentzhang1209@gmail.com>

# Setup JENKINS_HOME
ENV JENKINS_HOME /var/jenkins_home
RUN mkdir -p $JENKINS_HOME
RUN chown -R 1000:1000 $JENKINS_HOME
VOLUME $JENKINS_HOME

USER 1000
