FROM outoforbitdev/node:1.0.2

RUN apk update \
    && apk add git

RUN npm install -g \
    semantic-release@^21.0.7\
    @semantic-release/git@^10.0.1 \
    @semantic-release/changelog@^6.0.3 \
    @semantic-release/exec@^6.0.3

COPY entrypoint.sh /entrypoint.sh

COPY .releaserc /.releaserc

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
