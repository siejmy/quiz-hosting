#!/usr/bin/env bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "${DIR}"
set -e

source ../../project.config.sh

CONTAINER_NAME="sanktuaria-20201209"
CLOUDRUN_TAG="gcr.io/${GCP_PROJECT_ID}/${CONTAINER_NAME}"

gcloud builds submit --tag "${CLOUDRUN_TAG}"

gcloud beta run deploy "${CONTAINER_NAME}" \
          --region "${GCP_REGION_CLOUDRUN}" \
          --image "${CLOUDRUN_TAG}" \
          --cpu 1 \
          --memory 256Mi \
          --max-instances 1 \
          --concurrency 15 \
          --timeout 10s \
          --allow-unauthenticated \
          --platform managed

