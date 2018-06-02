#!/bin/sh
#
# Deploy the application to the artefact repository

set -eu -o pipefail

echo "== Checking for artefacts to deploy..."

NUMBER_OF_ARTEFACTS_TO_DEPLOY="$(find "${WORKSPACE}" -type f -name "*.jar" | wc -l || echo '0')"

if [ "${NUMBER_OF_ARTEFACTS_TO_DEPLOY}" -gt 0 ]
then
  echo "== Deploying to the artefact store..."
  find "${WORKSPACE}" -type f -name "*.jar" -exec echo "== Deploying {}" \;

  echo "== Triggering Delivery to the following environment:"
  echo "---- DEPLOY_TARGET=${DEPLOY_TARGET:-staging}"
  sleep 1

  echo "== Deployed and delivered!"
else
  echo "== No artefacts found in ${WORKSPACE}/target. Nothing to do."
fi
