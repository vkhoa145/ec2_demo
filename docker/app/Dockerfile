FROM ruby:3.2.2-slim

RUN apt-get update -y && \
  apt-get upgrade -y && \
  apt-get install -y \
  build-essential default-libmysqlclient-dev vim less

WORKDIR /app
COPY Gemfile Gemfile.lock ./

RUN bundle install

COPY . .
CMD [ "rails", "server", "-p", "3000","-b", "0.0.0.0" ]
