#!/bin/bash

set -eux

rm -f /app/tmp/pids/server.pid

exec "$@"
