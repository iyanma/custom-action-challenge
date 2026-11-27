FROM alpine:latest

RUN apk update && pk add --no-cache bash jq

RUN mkdir -p /opt/bin
COPY ./entrypoint.sh /opt/bin/entrypoint.sh
RUN chmod +x /opt/bin/entrypoint.sh

ENTRYPOINT ["/opt/bin/entrypoint.sh"]
