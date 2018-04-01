FROM alpine:latest
RUN apk update && \
  apk add build-base && \
  wget https://www.cockos.com/ninjam/downloads/src/ninjam_server_0.071.zip && \
  mkdir ninjam && \
  unzip ninjam_server_0.071.zip && \
  cd ninjam/server && \
  make && \
  cp ninjamsrv /usr/local/bin/ninjamsrv
