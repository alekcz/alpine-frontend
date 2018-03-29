FROM ruby:2.5-alpine

RUN apk --update add ca-certificates curl wget bash make gcc musl-dev libgcc g++ python git nodejs && \
    addgroup -g 1000 -S coolguy && \
    adduser -u 1000 -S coolguy -G coolguy && mkdir /home/coolguy/.npm-global && \
    chown -R coolguy:coolguy /home/coolguy 

ENV PATH=/home/coolguy/.npm-global/bin:$PATH
ENV NPM_CONFIG_PREFIX=/home/coolguy/.npm-global

USER coolguy
RUN npm install --ignore-optional -g gulp-cli @angular/cli@1.5.0 node-sass

