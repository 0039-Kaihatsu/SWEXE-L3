#!/usr/bin/env bash
# exit on error
# bin/render-build.sh
set -o errexit

bundle install
bundle exec rails assets:precompile
bundle exec rails assets:clean
bundle exec rails db:migrate
