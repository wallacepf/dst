FROM wallacepf/steamcmd:latest

LABEL maintainer="wallacepf@gmail.com"

RUN mkdir -p /src/server_dst/config/DoNotStarveTogether/TrancaDSTServer/Master && \
mkdir /src/server_dst/config/DoNotStarveTogether/TrancaDSTServer/Caves

COPY server_dst.txt /src/config

WORKDIR /src/steamcmd

RUN ./steamcmd.sh +runscript ../config/server_dst.txt

COPY start.sh /src/server_dst/bin
COPY start2.sh /src/server_dst/bin
COPY cluster.ini /src/server_dst/config/DoNotStarveTogether/TrancaDSTServer
COPY cluster_token.txt /src/server_dst/config/DoNotStarveTogether/TrancaDSTServer
COPY Caves/* /src/server_dst/config/DoNotStarveTogether/TrancaDSTServer/Caves/
COPY Master/* /src/server_dst/config/DoNotStarveTogether/TrancaDSTServer/Master/

VOLUME [ "/src" ]