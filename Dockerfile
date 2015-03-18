FROM tutum/debian:wheezy

MAINTAINER Giovanni De Gasperis <giovanni@giodegas.it>

# System update and basic tools
RUN apt-get update && apt-get -y install curl build-essential apt-utils wget git cmake

# 3D Mesa libraries and xterm to run X apps
RUN apt-get -y install libglu1-mesa-dev freeglut3-dev mesa-common-dev xterm

# Install YARP binaries
RUN apt-get install yarp
RUN yarp check
