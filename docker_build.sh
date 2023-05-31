docker run --rm -v .:/gp2040-ce alpine:3 /sh

docker run --rm -v $(pwd):/gp2040-ce --platform linux/amd64 ubuntu:22.04 /bin/bash -c "apt update && apt install -y git cmake gcc-arm-none-eabi libnewlib-arm-none-eabi build-essential python3 nodejs npm && cd gp2040-ce/ && PICO_SDK_FETCH_FROM_GIT=true GP2040_BOARDCONFIG=comfybox cmake -B build/ -DCMAKE_BUILD_TYPE=Release && cmake --build build/"

apt update
apt install -y git cmake gcc-arm-none-eabi libnewlib-arm-none-eabi build-essential python3 nodejs npm
