#!/bin/bash -u

# Copyright 2018 ConsenSys AG.
#
# Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with
# the License. You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on
# an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the
# specific language governing permissions and limitations under the License.

NO_LOCK_REQUIRED=true

. ./.env
. ./.common.sh

# create log folders with the user permissions so it won't conflict with container permissions
mkdir -p logs/besu logs/quorum

# Build and run containers and network
echo "docker-compose.yml" > ${LOCK_FILE}

echo "${bold}*************************************"
echo "Iob Besu Network Quickstart"
echo "*************************************${normal}"
echo "Start network"
echo "--------------------"

if [ -f "docker-compose-deps.yml" ]; then
    echo "Starting dependencies..."
    docker compose -f docker-compose-deps.yml up --detach
    sleep 60
fi

echo "Starting network..."
docker compose build --pull
docker compose up --detach


#list services and endpoints
./list.sh
