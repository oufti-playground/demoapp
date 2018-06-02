#!/bin/bash
#
# Build the application

set -eux -o pipefail

# Implies the goals 'compile' and 'test' (Unit Tests)
mvn -B clean package
