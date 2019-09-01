FROM ruby:2.6.3-slim

RUN apt-get update
RUN apt-get -y -qq upgrade
RUN apt-get -y -qq install libpq-dev python-pip python-dev jq curl git libsqlite3-dev

# for node
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get install -y nodejs

ARG VERSION

ENV VERSION=${VERSION}
ENV RAILS_ENV production
ENV RAILS_LOG_TO_STDOUT true
ENV RAILS_SERVE_STATIC_FILES true

WORKDIR /usr/src/app

RUN bundle config --global frozen 1

COPY Gemfile Gemfile.lock ./

RUN bundle install --without development test

COPY . .

ENTRYPOINT ["puma", "-C", "config/puma.rb", "-p", "8080" ]

EXPOSE 8080