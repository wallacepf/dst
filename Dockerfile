FROM cm2network/steamcmd

RUN mkdir ~/server_dst && mkdir ~/config

COPY . ~/config

RUN ./steamcmd.sh +runscript ~/config