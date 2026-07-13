FROM clcain/yolks:debian

RUN dpkg --add-architecture i386 && apt update && apt install -y \
        lib32gcc-s1 \
        libsdl2-2.0-0:i386 \
        && apt clean \
        && rm -rf /var/lib/apt/lists/*
