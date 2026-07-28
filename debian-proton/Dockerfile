FROM clcain/yolks:debian-source

USER root

ARG GE_PROTON_VERSION=GE-Proton10-34

RUN apt update && apt install -y \
        alsa-tools \
        cabextract \
        dbus \
        file \
        gnutls-bin \
        libao-common \
        libasound2 \
        libgdiplus \
        libntlm0 \
        libpulse-dev \
        libpulse0 \
        numactl \
        pipx \
        pulseaudio \
        python3 \
        python3-pip \
        python3-setuptools \
        wine32 \
        wine64 \
        winbind \
        xauth \
        xvfb \
        && apt clean \
        && rm -rf /var/lib/apt/lists/*

RUN curl -fsSL -o /tmp/ge-proton.tar.gz \
        "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${GE_PROTON_VERSION}/${GE_PROTON_VERSION}.tar.gz" \
        && tar -xzf /tmp/ge-proton.tar.gz -C /usr/local/bin/ --strip-components=1 \
        && rm -f /tmp/ge-proton.tar.gz

RUN rm -f /etc/machine-id \
        && dbus-uuidgen --ensure=/etc/machine-id \
        && rm -f /var/lib/dbus/machine-id \
        && dbus-uuidgen --ensure

RUN pipx install protontricks \
        && ln -sf /root/.local/bin/protontricks /usr/local/bin/protontricks \
        && ln -sf /root/.local/bin/protontricks-launch /usr/local/bin/protontricks-launch \
        && ln -sf /root/.local/bin/protontricks-desktop-install /usr/local/bin/protontricks-desktop-install \
        && wget -q -O /usr/sbin/winetricks https://raw.githubusercontent.com/Winetricks/winetricks/master/src/winetricks \
        && chmod +x /usr/sbin/winetricks
