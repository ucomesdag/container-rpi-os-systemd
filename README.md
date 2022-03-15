Raspberry Pi OS (x86) Systemd Container Image
=====================

> This is a debian x86 based image with some of the packages present on Raspberry Pi OS.

This Containerfile can build containers capable to use systemd.

[![rpi-os build status](https://quay.io/repository/ucomesdag/rpi-os/status "Container Repository on Quay")](https://quay.io/repository/ucomesdag/rpi-os)

Branches
--------

This repository has multiple branches that relate to Debian versions.

|Branch  |Raspberry Pi OS Version    |Container image tag|
|--------|---------------------------|-------------------|
|main    |bullseye (11)              |latest             |

Pull strategy
-------------

The different branches are **not** merged, they live as individual branches.

Manually starting
-----------------

```
podman run \
  --tty \
  --privileged \
  --volume /sys/fs/cgroup:/sys/fs/cgroup:ro \
  quay.io/ucomesdag/rpi-os
```
