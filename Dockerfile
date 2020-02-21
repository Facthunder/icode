FROM openjdk:8u222-slim-buster AS base

ADD https://github.com/lequal/i-CodeCNES/releases/download/v4.0.0/icode-4.0.0.zip /

RUN apt-get update -y && \
    apt-get install -y unzip && \
    unzip /icode-4.0.0.zip && \
    chmod +x /icode/icode

FROM openjdk:8u222-slim-buster

COPY --from=base /icode /usr/bin
    
WORKDIR /src
LABEL maintainer="begarco"
ENTRYPOINT ["icode", "-"]
