FROM giodegas/yarp

MAINTAINER Giovanni De Gasperis <giovanni@giodegas.it>

RUN apt-get update
RUN apt-get install -y --force-yes icub

RUN yarp check
