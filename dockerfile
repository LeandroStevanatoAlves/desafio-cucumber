FROM ruby:2.6.6-alpine

RUN apk update && \
    apk add build-base && \
    apk add g++ gcc unixodbc-dev unixodbc freetds-dev freetds && \
    apk add chromium chromium-chromedriver

RUN apk update &&\
    apk add --update alpine-sdk \
               build-base

RUN mkdir cucumber
WORKDIR /cucumber
COPY Gemfile .

RUN gem install bundler --source http://rubygems.org &&\
    bundle install

ENV CHROME_BIN=/usr/bin/chromium-browser \
    CHROME_PATH=/usr/lib/chromium/