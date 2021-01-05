#!/usr/bin/env bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "${DIR}"
set -e

source project.config.sh

"./runs/sanktuaria/deploy.sh" &
"./runs/cuda-eucharystyczne/deploy.sh" &
"./runs/ile-wiesz-o-bozym-narodzeniu/deploy.sh" &
"./runs/ile-wiesz-o-epifanii/deploy.sh" &
wait

firebase deploy --only hosting,firestore
