FROM tutum/debian:wheezy

MAINTAINER Giovanni De Gasperis <giovanni@giodegas.it>

RUN sh -c 'echo "deb http://www.icub.org/ubuntu trusty contrib/science" > /etc/apt/sources.list.d/icub.list'
RUN apt-get update
RUN apt-get install -y --force-yes icub

RUN yarp check
