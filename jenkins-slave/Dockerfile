FROM centos:6.7

MAINTAINER "Vincent" <vincentzhang1209@gmail.com> 

# Install a basic SSH server
RUN yum -y install \
    openssh-server \
    openssh-clients \
    sudo

# Install JDK 7 (latest edition)
RUN yum install -y java-1.7.0-openjdk

# setup user jenkins
RUN adduser jenkins
RUN mkdir -p /home/jenkins/.ssh

RUN     sed -i -e 's/Defaults    requiretty/#Defaults    requiretty/' /etc/sudoers
RUN     echo "jenkins ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

RUN echo 'jenkins:jenkins' | chpasswd
# Standard SSH port
EXPOSE 22
