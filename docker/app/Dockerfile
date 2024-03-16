FROM ruby:3.0.0
ENV LANG C.UTF-8

RUN apt-get update -y && apt-get upgrade -y && apt-get install -y \
  nodejs vim less shared-mime-info build-essential default-libmysqlclient-dev git imagemagick

ADD . /app

ENV RAILS_ENV=production \
    RAILS_SERVE_STATIC_FILES=true \
    RAILS_LOG_TO_STDOUT=true \
    RAILS_MASTER_KEY=55f1959a05641f864c2bb4625ed96775

WORKDIR /app
RUN mkdir -p tmp/sockets
RUN bundle install

RUN rails assets:precompile RAILS_ENV=production

# Expose volumes to frontend
VOLUME /app/public
VOLUME /app/tmp

EXPOSE 3000
