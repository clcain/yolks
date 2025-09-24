FROM debian:trixie-slim

RUN dpkg --add-architecture i386 && apt update && apt install -y \
        ca-certificates \
        curl \
        dnsutils \
        git \
        iproute2 \
        iputils-ping \
        jq \
        lib32gcc-s1 \
        libsdl2-2.0-0:i386 \
        locales \
        nano \
        net-tools \
        netcat-traditional \
        tar \
        telnet \
        tzdata \
        vim \
        wget \
        && apt clean

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
