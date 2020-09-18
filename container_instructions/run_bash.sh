docker rm --force parser-box

docker run -t -d --network host --name parser-box --ipc host --memory-swappiness 0 centos:centos8 /bin/bash

docker exec -it parser-box /bin/bash