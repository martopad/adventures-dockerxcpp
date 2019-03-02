#HEADS UP, reason for constant sleeps and updates are because of constant failure in getting packages. this is still under investigation.

#FROM ubuntu:latest
#FROM ubuntu:19.04
FROM ubuntu:18.04
#FROM ubuntu:16.04

#ENV DEBIAN_FRONTEND noninteractive

#Setting proper repos
    RUN apt-get update && apt-get -y upgrade
    RUN sleep 5
    RUN apt-get install -y software-properties-common
#   RUN apt-get install -y build-essential

# #Installing GCC
    RUN sleep 5
    RUN apt-get install -y gcc-8 g++-8
    RUN update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-8 50
    RUN update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-8 50

# #Installing Make
    RUN sleep 5
    RUN apt-get install -y make

# #Installing Pip for Conan Package Management
    RUN apt-get update && sleep 10 && apt-get install -y python3-pip


#RUN pip3 --version


RUN echo "IS THIS WORKING?"

ENTRYPOINT [ "/bin/bash" ]