FROM openjdk:11

MAINTAINER Mikko Aalto <mikko@huzl.com>
LABEL Description="OpenJDK 11 and AWS CLI. Made for gitlab CI/CD base image."

# Install
RUN npm install -g aws-cdk \
    && npm install -g node-gyp \
    && apk add --no-cache zsh python3-dev python groff zip git jq make g++ gcc libressl-dev musl-dev libffi-dev postgresql-dev \
    && pip3 install --no-cache-dir --upgrade pip \
    && pip3 install --no-cache-dir --upgrade awscli boto3 requests aws-cdk.core 
