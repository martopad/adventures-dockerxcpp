#FROM ubuntu:latest
#FROM ubuntu:19.04
#FROM ubuntu:18.04
#FROM ubuntu:18.10
FROM ubuntu:16.04

#Setting proper repos
    RUN apt-get update

#for faster apt-get
    RUN apt-get install -y software-properties-common
    RUN add-apt-repository ppa:apt-fast/stable
    RUN apt-get update
    RUN apt-get -y install apt-fast

# #Installing GCC
    RUN apt-fast install -y gcc g++

# #Installing Make
    RUN apt-fast install -y make
    RUN apt-fast install -y cmake-curses-gui

# #Installing Pip for Conan Package Management
    RUN apt-fast install -y python3-pip
    RUN pip3 install conan