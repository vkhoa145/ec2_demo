FROM ruby:3.0.0
ENV LANG C.UTF-8

RUN apt-get update -y && apt-get upgrade -y && apt-get install -y \
  nodejs vim less shared-mime-info build-essential default-libmysqlclient-dev git imagemagick

ADD . /app
WORKDIR /app
RUN mkdir -p tmp/sockets
RUN bundle install

RUN rails assets:precompile RAILS_ENV=production

# Expose volumes to frontend
VOLUME /app/public
VOLUME /app/tmp

EXPOSE 3000
