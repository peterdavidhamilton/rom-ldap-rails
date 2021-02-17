#!/bin/sh

set -e

echo "Ruby version:"
ruby --version

echo "Installing ruby gems:"
gem install bundler --no-document
bundle check || bundle install

echo "Create and migrate database:"
bundle exec rake db:migrate

exec bundle exec "$@"
