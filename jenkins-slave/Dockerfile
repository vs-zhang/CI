FROM centos:6.7

MAINTAINER "Vincent" <vincentzhang1209@gmail.com> 

ENV HOME /home/jenkins
# Install a basic SSH server
RUN yum -y install \
    openssh-server \
    openssh-clients \
    sudo

# Install JDK 7 (latest edition)
RUN yum install -y java-1.7.0-openjdk

# setup user jenkins
RUN adduser jenkins

RUN echo "jenkins ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

RUN echo 'jenkins:jenkins' | chpasswd
# Standard SSH port
EXPOSE 22

COPY start.sh $HOME/start.sh
RUN chown -R 1000:1000 $HOME/start.sh
RUN chmod +x $HOME/start.sh

USER jenkins
CMD bash $HOME/start.sh; 'bash'
