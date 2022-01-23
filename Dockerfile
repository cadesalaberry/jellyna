FROM linuxserver/jellyfin:10.7.7

RUN \
  echo "**** install cifs-utils *****" && \
  apt-get update && \
  apt-get install -y --no-install-recommends \
    cifs-utils && \
  echo "**** cleanup ****" && \
  rm -rf \
    /tmp/* \
    /var/lib/apt/lists/* \
    /var/tmp/*

COPY root/ /

RUN mkdir /media/freebox

ENTRYPOINT [ "/mount-before-init" ]
