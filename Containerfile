FROM debian:bookworm

ARG BUILD_DATE

LABEL summary="Raspberry Pi OS (x86) Systemd Container Image."
LABEL maintainer="Uco Mesdag <uco@mesd.ag>"
LABEL build-date=${BUILD_DATE}

ENV container=podman
ENV DEBIAN_FRONTEND=noninteractive

# Enable systemd and install some of the same packages present as on Raspberry Pi OS.
RUN apt-get update; \
    apt-get install -y systemd \
                python3 \
                sudo \
                ifupdown \
                dhcpcd5 \
                ca-certificates \
                findutils \
                gnupg \
                dirmngr \
                iputils-ping \
                netbase \
                curl \
                udev \
                procps \
                iproute2; \
    apt-get clean ; \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* ; \
    rm -rf /lib/systemd/system/multi-user.target.wants/* ; \
    rm -rf /etc/systemd/system/*.wants/* ; \
    rm -rf /lib/systemd/system/local-fs.target.wants/* ; \
    rm -rf /lib/systemd/system/sockets.target.wants/*udev* ; \
    rm -rf /lib/systemd/system/sockets.target.wants/*initctl* ; \
    rm -rf /lib/systemd/system/sysinit.target.wants/systemd-tmpfiles-setup* ; \
    rm -rf /lib/systemd/system/systemd-update-utmp*

VOLUME ["/sys/fs/cgroup"]
CMD ["/lib/systemd/systemd"]
