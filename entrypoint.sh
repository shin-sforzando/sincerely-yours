#!/bin/bash

set -eux

rm -f /app/tmp/pids/server.pid

bundle exec rails assets:precompile

exec "$@"
