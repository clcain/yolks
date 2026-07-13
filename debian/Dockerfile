FROM debian:trixie-slim

RUN dpkg --add-architecture i386 && apt update && apt install -y \
        ca-certificates \
        curl \
        dnsutils \
        g++ \
        gdb \
        gcc \
        git \
        iproute2 \
        iputils-ping \
        jq \
        lib32gcc-s1 \
        libsdl2-2.0-0:i386 \
        lsof \
        locales \
        nano \
        net-tools \
        netcat-traditional \
        tcpdump \
        tar \
        telnet \
        traceroute \
        tzdata \
        vim \
        wget \
        && apt clean \
        && rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
