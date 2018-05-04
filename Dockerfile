FROM beevelop/android

MAINTAINER Lee Meador <docker@leemeador.com>

RUN apt-get -y update && \
        apt-get -y install sudo bzip2 ca-certificates && \
        rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
        apt-get autoremove -y && \
        apt-get clean
        
RUN sudo apt-get install build-essential
RUN apt-get install python2.7
RUN apt-get install python-pip
