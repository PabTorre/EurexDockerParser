docker run -t -d --rm=true --network host --name eurex-box --ipc host --memory-swappiness 0 parser-box:latest

docker exec -it eurex-box /bin/bash
