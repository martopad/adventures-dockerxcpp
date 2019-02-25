#FROM ubuntu:latest
#FROM ubuntu:19.04
FROM ubuntu:18.04
#FROM ubuntu:16.04

#ENV DEBIAN_FRONTEND noninteractive

ENV http_proxy=http://cnhon1c-proxy.apac.nsn-net.net:8080
ENV https_proxy=http://cnhon1c-proxy.apac.nsn-net.net:8080

#Setting proper repos
    RUN apt-get update
    RUN apt-get -y upgrade
    RUN apt-get install -y software-properties-common
#   RUN apt-get install -y build-essential

# #Installing GCC
    RUN apt-get install -y gcc-8 g++-8
    RUN update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-8 50
    RUN update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-8 50

# #Installing Make
    RUN apt-get install -y make

# #Installing Pip for Conan Package Management
    RUN apt-get install -y python3-pip


#RUN pip3 --version


RUN echo "IS THIS WORKING?"

ENTRYPOINT [ "/bin/bash" ]