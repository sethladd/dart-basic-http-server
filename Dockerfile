FROM sethladd/docker-dart

ADD . /app
WORKDIR /app
RUN pub get

EXPOSE 7777

ENTRYPOINT dart bin/basic_http_server.dart