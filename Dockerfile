FROM cm2network/steamcmd:root

LABEL maintainer="wallacepf@gmail.com"

RUN sudo mkdir -p /src/server_dst && sudo mkdir /src/config

COPY . /src/config

VOLUME [ "/src" ]

RUN ./steamcmd.sh +runscript /src/config/server_dst.txt