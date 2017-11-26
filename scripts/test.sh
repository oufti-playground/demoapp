#!/bin/sh
#
# Run Integration Tests on the application

set -eux -o pipefail

mvn verify 
