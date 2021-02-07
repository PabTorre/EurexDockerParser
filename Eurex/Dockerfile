# Get the GCC preinstalled image from Docker Hub
FROM gcc:4.9

COPY . /root/eurex



RUN cp /root/eurex/apps/libpcap.so.1 /lib/x86_64-linux-gnu/libpcap.so.1

WORKDIR /root/eurex/apps/
VOLUME ./data /root/eurex/apps/data/

