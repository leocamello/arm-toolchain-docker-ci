FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y build-essential

ADD . /home/project
WORKDIR /home/project

CMD [""]