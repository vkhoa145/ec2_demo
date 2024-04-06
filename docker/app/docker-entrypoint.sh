#!/bin/bash

# Exit on fail
set -e

gem install bundler

# Bundling
bundle config set --local deployment 'true'
bundle install --jobs=2

bundle exec rails assets:precompile
bundle exec rails db:migrate

# Remove puma pid if existed
rm -f tmp/pids/server.pid

# bundle exec whenever --update-crontab
# cron -f &

# Start services
bundle exec puma -C config/puma.rb

# Finally call command issued to the docker service
exec "$@"