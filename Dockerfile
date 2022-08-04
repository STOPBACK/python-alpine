FROM alpine:latest
RUN apk update && apk add python3 && apk add py3-pip
COPY --chown=root:root run.sh /run.sh
CMD [ "/bin/sh", "/run.sh" ]