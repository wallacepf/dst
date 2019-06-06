FROM ubuntu

LABEL maintainer="wallacepf@gmail.com"

RUN dpkg --add-architecture i386 && \
apt-get update && apt-get -y install \
wget \
lib32gcc1 \
lib32stdc++6 \
libcurl4-gnutls-dev:i386

RUN mkdir -p /src/server_dst && mkdir /src/config

COPY steamcmd_linux.tar.gz /src

COPY server_dst.txt /src/config

RUN adduser dst && su - dst

WORKDIR /src

RUN tar -xvzf steamcmd_linux.tar.gz

RUN ./steamcmd/steamcmd.sh +runscript config/server_dst.txt

# RUN apt-get update

# COPY . /src/config

VOLUME [ "/src" ]

# RUN ./steamcmd.sh +runscript /src/config/server_dst.txt