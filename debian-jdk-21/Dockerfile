FROM clcain/yolks:debian

RUN apt update && apt install -y \
        openjdk-21-jdk \
        && apt clean \
        && rm -rf /var/lib/apt/lists/*
