FROM clcain/yolks:debian

RUN dpkg --add-architecture i386 && apt update && apt install -y \
        lib32gcc-s1 \
        libsdl2-2.0-0:i386 \
        && apt clean \
        && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /usr/local/steamcmd \
        && curl -sSL -o /tmp/steamcmd.tar.gz https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz \
        && tar -xzf /tmp/steamcmd.tar.gz -C /usr/local/steamcmd \
        && rm -f /tmp/steamcmd.tar.gz

ENV PATH="/usr/local/steamcmd:${PATH}"
