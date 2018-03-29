FROM ruby:2.5-alpine

RUN apk --update add --no-cache ca-certificates curl wget bash make gcc musl-dev libgcc g++ python git nodejs && \
    addgroup -g 1000 -S coolguy && \
    adduser -u 1000 -S coolguy -G coolguy && mkdir /home/coolguy/.npm-global && \
    chown -R coolguy:coolguy /home/coolguy 

USER coolguy

ENV PATH=/home/coolguy/.npm-global/bin:$PATH
ENV NPM_CONFIG_PREFIX=/home/coolguy/.npm-global

RUN npm install --ignore-optional -g gulp-cli @angular/cli@1.5.0
