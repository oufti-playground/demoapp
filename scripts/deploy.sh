#!/bin/sh
#
# Deploy the application to the artefact repository

set -eux -o pipefail

echo "== Checking artefact validity"
ls -l "${WORKSPACE}/target"/*.jar

echo "== Deploying to the artefact store..."
sleep 5

echo "== Triggering Delivery to the following environment:"
echo "---- DEPLOY_TARGET=${DEPLOY_TARGET:-staging}"
sleep 5

echo "== Deployed and delivered!"
