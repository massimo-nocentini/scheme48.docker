

FROM ubuntu:latest

WORKDIR /home/ubuntu

RUN apt-get update && apt-get upgrade -y && apt-get install -y wget clang make build-essential git sudo libreadline-dev

RUN wget --no-verbose https://s48.org/1.9.3/scheme48-1.9.3.tgz \
	&& tar xf scheme48-1.9.3.tgz \
	&& cd scheme48-1.9.3 \
	&& CC=clang ./configure \
	&& make \
	&& sudo make install-no-doc \
	&& cd .. && rm -rf scheme48-1.9.3*
