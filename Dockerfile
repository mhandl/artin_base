#
# Scala and sbt Dockerfile
#
# https://github.com/mhandl/artin_base
#

# Pull base image
FROM netflixoss/java:8

################################################################################
# Update the packeage and install NMAP CURL & WGET & GIT
################################################################################

RUN \
  apt-get update && \
  apt-get install -y nmap curl wget git

################################################################################
# Install NODEJS & NPM
################################################################################
RUN \
 curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -

RUN \
  apt-get install -y nodejs build-essential

# Define working directory
WORKDIR /root
