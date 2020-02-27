FROM ubuntu:16.04

MAINTAINER Armando Soares <armando@ufpi.edu.br>

WORKDIR /root

# install git, maven, vim, openjdk and wget
RUN apt-get update && apt-get install -y git maven vim openjdk-8-jdk wget

# Faz o clone de repositorio app-crud-data
RUN git clone https://github.com/topicos-sistemas-distribuidos/app-crud-data.git

# Vai para o diretorio /root/app-crud-data
WORKDIR /root/app-crud-data

# set environment variable
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64