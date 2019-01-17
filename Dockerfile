FROM ubuntu:16.04

RUN apt-get update && \
    apt-get install -y build-essential && \
    apt-get install -y gcc-arm-none-eabi

ADD . /home/project
WORKDIR /home/project

CMD [""]