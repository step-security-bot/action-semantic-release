FROM node:18-alpine

RUN apk update \
    && apk add git

RUN npx semantic-release@^21

COPY entrypoint.sh /entrypoint.sh

COPY .releaserc /.releaserc

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
