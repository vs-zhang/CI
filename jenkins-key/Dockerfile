FROM alpine 
MAINTAINER "Vincent" <vincentzhang1209@gmail.com>

# Setup JENKINS_HOME
ENV JENKINS_KEY /var/jenkins_key
RUN mkdir -p $JENKINS_KEY
VOLUME $JENKINS_KEY

COPY ssh_key.sh $JENKINS_KEY/ssh_key.sh
RUN apk --update add bash openssh
RUN chmod +x $JENKINS_KEY/ssh_key.sh
CMD bash $JENKINS_KEY/ssh_key.sh
