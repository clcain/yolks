FROM clcain/yolks:debian

RUN dpkg --add-architecture i386 && apt update && apt install -y \
        g++ \
        gcc \
        gdb \
        lib32gcc-s1 \
        lib32stdc++6 \
        lib32tinfo6 \
        lib32z1 \
        libcurl3-gnutls:i386 \
        libcurl4-gnutls-dev:i386 \
        libcurl4:i386 \
        libfontconfig1 \
        libgcc1 \
        libncurses5:i386 \
        libsdl1.2debian \
        libsdl2-2.0-0:i386 \
        libssl3:i386 \
        libtinfo6:i386 \
        && apt clean
