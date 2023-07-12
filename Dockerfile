FROM node:18-alpine

COPY entrypoint.sh /entrypoint.sh

COPY .releaserc /.releaserc

RUN apk update \
    && apk add git

RUN npm install -g \
    semantic-release@^21.0.7\
    @semantic-release/git@^10.0.1 \
    @semantic-release/changelog@^6.0.3

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
