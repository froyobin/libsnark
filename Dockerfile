FROM ubuntu
MAINTAINER bin
RUN apt-get update
RUN apt-get install -y build-essential cmake git libgmp3-dev libprocps4-dev python-markdown libboost-all-dev libssl-dev git vim pkg-config tmux sudo
RUN useradd -ms /bin/bash --password "123456" yb && usermod -aG sudo yb
USER yb
WORKDIR /home/yb
RUN git clone https://github.com/froyobin/libsnark.git 
RUN  cd /home/yb/libsnark && git submodule init && git submodule update
USER root
WORKDIR /root


