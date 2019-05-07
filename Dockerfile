FROM circleci/node:10-jessie

MAINTAINER petabytestorage@gmail.com <Petabyte Storage>


USER root

RUN printf "deb http://archive.debian.org/debian/ jessie main\ndeb-src http://archive.debian.org/debian/ jessie main\ndeb http://security.debian.org jessie/updates main\ndeb-src http://security.debian.org jessie/updates main" > /etc/apt/sources.list

USER circleci

RUN sudo apt-get update -y

RUN sudo apt-get install -y ruby default-jdk python-pip python-dev zsh wget curl

RUN pip install awscli --upgrade --user

RUN	cd && mkdir dynamodb && cd dynamodb && wget -O DynamoDBLocal.tar.gz https://s3-us-west-2.amazonaws.com/dynamodb-local/dynamodb_local_latest.tar.gz && tar xvfpz DynamoDBLocal.tar.gz
