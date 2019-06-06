FROM cm2network/steamcmd

LABEL maintainer="wallacepf@gmail.com"

RUN mkdir -p /src/server_dst && mkdir /src/config

COPY . /src/config

VOLUME [ "/src" ]

RUN ./steamcmd.sh +runscript /src/config/server_dst.txt