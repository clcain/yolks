FROM debian:trixie-slim

RUN apt update && apt install -y \
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
