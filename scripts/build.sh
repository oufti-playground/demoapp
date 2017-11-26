#!/bin/sh
#
# Build the application

set -eux -o pipefail

mvn clean package # Implies the goals 'compile' and 'test' (Unit Tests)
