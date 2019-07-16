FROM debian:stable-slim

LABEL "com.github.actions.name"="Branch Sync"
LABEL "com.github.actions.description"=""
LABEL "com.github.actions.icon"="refresh-cw"
LABEL "com.github.actions.color"="white"

COPY entrypoint.sh /entrypoint.sh

RUN apt-get update && \
  apt-get install curl -y && \
  apt-get clean -y

ENTRYPOINT ["/entrypoint.sh"]
