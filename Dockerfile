FROM alpine:latest

RUN apk update && \
    apk add --no-cache gcc libc-dev make

ADD . /home/project
WORKDIR /home/project

CMD [""]