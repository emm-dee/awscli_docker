FROM alpine:3.7
RUN apk update
RUN apk add python3 shadow bash
RUN mkdir /app
RUN addgroup -g 1001 app
RUN adduser -D -h /home/app -u 1001 -G app -s /bin/bash app
RUN chown 1001:1001 /app
USER app
WORKDIR /app
RUN mkdir -p /home/app/data
RUN pip3 install awscli --upgrade --user
ENV PATH "$PATH:/home/app/.local/bin"