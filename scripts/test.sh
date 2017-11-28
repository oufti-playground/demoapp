#!/bin/sh
#
# Run Integration Tests on the application

set -eux -o pipefail

mvn -B -DskipUnitTests=true verify 
