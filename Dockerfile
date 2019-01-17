FROM alpine:latest

ADD . /home/project

WORKDIR /home/opt

RUN apk update && \
    apk add --no-cache make && \
    apk add --no-cache --virtual dependencies bzip2-dev ca-certificates openssl tar wget && \
    wget -q https://developer.arm.com/-/media/Files/downloads/gnu-rm/8-2018q4/gcc-arm-none-eabi-8-2018-q4-major-linux.tar.bz2 && \
    tar xvf gcc-arm-none-eabi-8-2018-q4-major-linux.tar.bz2 && \
    rm gcc-arm-none-eabi-8-2018-q4-major-linux.tar.bz2 && \
    apk del dependencies && \
    rm -rf /home/opt/gcc-arm-none-eabi-8-2018-q4-major/share/doc

ENV PATH="/home/opt/gcc-arm-none-eabi-8-2018-q4-major/bin:${PATH}"

WORKDIR /home/project

CMD [""]