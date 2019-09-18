FROM openjdk:8u222-slim-buster AS base

ADD https://github.com/lequal/i-CodeCNES/releases/download/v3.1.0/i-CodeCNES-3.1.0-CLI-linux.gtk.x86_64.zip /

RUN apt-get update -y && \
    apt-get install -y unzip && \
    unzip /i-CodeCNES-3.1.0-CLI-linux.gtk.x86_64.zip && \
    chmod +x /icode/icode

FROM openjdk:8u222-slim-buster

WORKDIR /src

COPY --from=base /icode /usr/bin
    
RUN groupadd -r icode && \
    useradd --no-log-init -r -b /home -m -g icode icode 
#    chown -R icode:icode /src && \
#    chmod -R +w /src

LABEL maintainer="begarco"
ENTRYPOINT ["sh", "-c"]
