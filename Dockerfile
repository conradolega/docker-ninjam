FROM alpine:latest
RUN apk update && \
  apk add build-base git
RUN git clone https://github.com/justinfrankel/ninjam.git /ninjam && \
  cd ninjam/ninjam/server && \
  make && \
  cp ninjamsrv /usr/local/bin/ninjamsrv
ENTRYPOINT ["ninjamsrv", "/ninjam/ninjam/server/example.cfg"]
