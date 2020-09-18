docker stop parser-box-test &&
docker rm parser-box-test &&
docker run \
    --name parser-box-test \
    --env PDWSettings \
    --detach \
    --network host \
    --tty \
    --ipc host \
    --memory-swappiness 0 \
     ts_data pytest
