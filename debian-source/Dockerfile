FROM clcain/yolks:debian

RUN apt update && apt install -y \
        lib32stdc++6 \
        lib32tinfo6 \
        lib32z1 \
        libcurl3-gnutls:i386 \
        libcurl4-gnutls-dev:i386 \
        libcurl4:i386 \
        libfontconfig1 \
        libgcc1 \
        libncurses6:i386 \
        libsdl1.2debian \
        libssl3:i386 \
        libtinfo6:i386 \
        && apt clean \
        && rm -rf /var/lib/apt/lists/*
