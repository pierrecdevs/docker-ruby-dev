FROM ruby:3.4.2-alpine

ENV PORT 3000

RUN apk add --no-cache \
  build-base \
  sqlite-dev \
  nodejs \
  yarn \
  bash \
  git \
  yaml-dev \
  openssl \
  gmp \
  git \
  tzdata

RUN gem install rails bundler
RUN gem install rails

WORKDIR /opt/app

EXPOSE $PORT

ENTRYPOINT ["/bin/bash"]

