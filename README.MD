# ThirdPartyParsers

Parsers based on third party tools

Such as decoders provided by the exchange.

### Objective

We aim at setting up the runtime environment to execute the parser in a docker
container and IO with other data sources.

## Instructions

## Build , prepare and login to docker.
1. Go to Eurex folder run commands
   1. docker build -t eurex-box .
   2. docker run -t -d --network host --name parser-box --ipc host --memory-swappiness 0 eurex-box /bin/bash
   3. docker exec -it parser-box /bin/bash

At this point you enter the docker environment.
## Running Eobi parser inside docker
#### Go to the eurex apps.
cd eurex/apps/
#### check that all files are installed correctly
. check_requirements.sh
#### process all files in the test data folder, output them to ../output_data/
./deobi -s eobi.xml -c output.conf --input-file ../test_data/* --output-directory ../output_data/


##  copy files from docker into the host file system.
1. exit docker by CTRL+d
2. run docker cp parser-box:/root/eurex/output_data/ .