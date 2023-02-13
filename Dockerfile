FROM alpine:3.17
LABEL org.label-schema.schema-version="1.0"
LABEL org.label-schema.name="Docker In Docker Swarm"
LABEL maintainer="JSM <juliosejas98@gmail.com>"
RUN apk add --update docker openrc bash docker-cli-compose
RUN rc-update add docker boot
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]
