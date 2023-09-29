FROM ruby:3.2.2-slim-bullseye

ENV TZ="America/New_York"

RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
  && apt-get -y install --no-install-recommends \
  apt-utils \
  build-essential \
  curl \
  git \
  imagemagick \
  iproute2 \
  libpq-dev \
  openssh-client \
  postgresql-client \
  vim

RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | bash -
RUN apt install --assume-yes nodejs
RUN npm install --global yarn

RUN gem install bundler
RUN gem install foreman

WORKDIR /workspace
