FROM tutum/debian:6.0.9

MAINTAINER Giovanni De Gasperis <giovanni@giodegas.it>

RUN apt-get update
RUN apt-get install -y qtbase5-dev \
       qtdeclarative5-dev qtmultimedia5-dev qml-module-qtquick2 \
       qml-module-qtquick-window2 qml-module-qtmultimedia \
       qml-module-qtquick-dialogs qml-module-qtquick-controls

# Install YARP binaries
RUN apt-get install yarp
RUN yarp check
