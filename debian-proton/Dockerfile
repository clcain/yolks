FROM clcain/yolks:debian-source

USER root

RUN apt update && apt install -y \
        wine64 \
        wine32 \
        winbind \
        && apt clean \
        && rm -rf /var/lib/apt/lists/*

COPY proton /usr/local/bin/proton

RUN chmod +x /usr/local/bin/proton
