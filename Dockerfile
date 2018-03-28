FROM ruby:2.5-alpine

RUN apk --update add --no-cache ca-certificates curl wget bash make gcc musl-dev libgcc g++ python git && nodejs && \
    npm install -g node-sass gulp-cli @angular/cli@1.5.0

