# Jenkins CI with slave setup by ssh

## How to build
### jenkins-key
    $ docker build -t vszhang/jenkins-key:latest . 

### jenkins-data
    $ docker build -t vszhang/jenkins-data:latest .

### jenkins-master
    $ docker build -t vszhang/jenkins-master:latest .

### jenkins-slave
    $ docker build -t vszhang/jenkins-slave:latest .

## How to run
### jenkins-key
    $ docker run -it --name jenkins-key vszhang/jenkins-key

### jenkins-data
    $ docker run -it --name jenkins-data vszhang/jenkins-data

### jenkins-master
    $ docker run -it -p 8080:8080 --volumes-from jenkins-key --volumes-from jenkins-data --name myjenkins vszhang/jenkins-master

### jenkins-slave
    $ docker run -it --volumes-from jenkins-key --name jenkins-slave vszhang/jenkins-slave
