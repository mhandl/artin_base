#
# ARTIN Base Dockerfile
#
# https://github.com/mhandl/artin_base
#

# Pull base image
FROM netflixoss/java:8

################################################################################
# Update the package and install NMAP CURL & WGET & GIT
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
  apt-get install -y nodejs build-essential chrpath libssl-dev libxft-dev libfreetype6 libfreetype6-dev libfontconfig1 libfontconfig1-dev

# Define working directory
WORKDIR /root
