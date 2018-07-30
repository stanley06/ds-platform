FROM ubuntu:16.04
MAINTAINER "Stanley"

RUN apt-get update && apt-get install -y git \
    curl vim python3-dev python3-pip

RUN pip3 install --upgrade pip
RUN pip3 install tensorflow
RUN pip3 install numpy pandas sklearn matplotlib seaborn jupyter pyyaml

RUN ["mkdir", "notebooks"]

COPY conf/jupyter.py /root/.jupyter/
COPY start_jupyter.py /

VOLUME /notebooks

# jupyter and tensorboard port
EXPOSE 8888 6006
