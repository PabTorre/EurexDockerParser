# Parse EOBI data

Using parser provided by the exchange at
https://datashop.deutsche-boerse.com/

and documentation from

eurexchange.com/exchange-en/technology/t7/system-documentation/

## Instructions

## Build , prepare and login to docker.
1. Go to Eurex folder run commands
   1. docker build -t eurex-box .
   2. docker run  -v C:/data/:/root/eurex/apps/data/ -t -d -P --name parser-box  eurex-box bash
   3. docker exec -it parser-box bash


## At this point you enter the docker environment
## run deobi -> will process all files in the data/input folder
   4. . start_deobi.sh

   files are copied to c:/data/output/
# Copy the files out of docker
##  copy files from docker into the host file system.
to exit docker use CTRL+d
## run command on host system :


# Optional

#### check that all files are installed correctly
. check_requirements.sh
### to kill the docker container run:

docker rm -f parser-box