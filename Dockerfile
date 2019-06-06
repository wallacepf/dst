LABEL maintainer="wallacepf@gmail.com"

FROM cm2network/steamcmd

RUN mkdir /src/server_dst && mkdir /src/config

COPY . /src/config

VOLUME [ "/src" ]

RUN ./steamcmd.sh +runscript /src/config/server_dst.txt