FROM debian:bookworm-slim

RUN apt update && apt install -y \
        curl \
        dnsutils \
        iproute2 \
        iputils-ping \
        jq \
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
