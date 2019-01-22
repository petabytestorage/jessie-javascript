FROM circleci/node:10.11.0-jessie

MAINTAINER petabytestorage@gmail.com <Petabyte Storage>

RUN sudo apt-get update -y

RUN sudo apt-get install -y ruby default-jdk python-pip python-dev zsh wget curl

RUN pip install awscli --upgrade --user

RUN	cd && mkdir dynamodb && cd dynamodb && wget -O DynamoDBLocal.tar.gz https://s3-us-west-2.amazonaws.com/dynamodb-local/dynamodb_local_latest.tar.gz && tar xvfpz DynamoDBLocal.tar.gz && rm DynamoDBLocal.tar.gz


