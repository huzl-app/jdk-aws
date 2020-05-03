FROM openjdk:11

MAINTAINER Mikko Aalto <mikko@huzl.com>
LABEL Description="OpenJDK 11 and AWS CLI. Made for gitlab CI/CD base image."


RUN apt-get update && apt-get install -y python-pip

RUN pip install awscli --ignore-installed six
