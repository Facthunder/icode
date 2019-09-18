FROM openjdk:8u222-slim-buster

ADD https://github.com/lequal/i-CodeCNES/releases/download/v3.1.0/i-CodeCNES-3.1.0-CLI-linux.gtk.x86_64.zip /usr/bin

RUN unzip /usr/bin/i-CodeCNES-3.1.0-CLI-linux.gtk.x86_64.zip

USER icode
LABEL maintainer="begarco"
