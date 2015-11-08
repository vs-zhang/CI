FROM gliderlabs/alpine:3.2 
MAINTAINER "Vincent" <vincentzhang1209@gmail.com>

ENV JENKINS_KEY /var/jenkins_key
RUN mkdir -p $JENKINS_KEY
COPY ssh_key.sh $JENKINS_KEY/ssh_key.sh
RUN adduser -D -u 1000 jenkins
RUN chown -R 1000:1000 $JENKINS_KEY
VOLUME $JENKINS_KEY
RUN apk --update add bash openssh
USER 1000
RUN chmod +x $JENKINS_KEY/ssh_key.sh
CMD bash $JENKINS_KEY/ssh_key.sh; 'bash'
