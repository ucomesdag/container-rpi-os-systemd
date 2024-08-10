Raspberry Pi OS (x86) Systemd Container Image
=====================

> Debian x86 image with minimal packages to match Raspberry Pi OS.

This Containerfile can build containers capable to use systemd.

[![rpi-os build status][quai.io]](https://quay.io/repository/ucomesdag/rpi-os?tab=tags)

Branches
--------

This repository has multiple branches that relate to Debian versions.

|Branch  |Raspberry Pi OS Version    |Container image tag|
|--------|---------------------------|-------------------|
|main    |bookworm (12)              |latest             |

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
  quay.io/ucomesdag/rpi-os:latest
```

<!-- container image -->

[quai.io]: https://img.shields.io/badge/Quay.io-container%20image-green?style=flat&logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAMAAABEpIrGAAAAAXNSR0IArs4c6QAAAERlWElmTU0AKgAAAAgAAYdpAAQAAAABAAAAGgAAAAAAA6ABAAMAAAABAAEAAKACAAQAAAABAAAAIKADAAQAAAABAAAAIAAAAACshmLzAAABSlBMVEUAAAD////////////////////////39/f/+fn/////+fn5+fn69vb///r///v39/L///v48fH7+/v48fH//Pn28e78+fn07+z9+Pjy6+n79/X79/b7+Pbs5eL89vX69/Pr4+D69/Pp4t369vPn39z59fLm3dr49PLk3Nf49PHk2tb38/Hh1tT29PDf1tL28u/38u/d1ND18u/b0s718e708e3Xzsr08e3r5uPz7+3Ty8fw7Ony7+zx7evx7uvw7evMxsPw7erLxcLv7Onv7evJw8Hu7OrFwcDHwsDt7Oru7Oq7u7u8vLy9vLy9vb2+vby/vr3Avr3Av77AwMDBv77BwcHCv77Dw8PEwL/FxcXIyMjLyMbLy8vNzc3Q0NDT09PW1tbY2NjZ2dnb29vd3d3i4uLk5OTo6Ojp6enq6urr6unr6urs6uns6+ryGpEZAAAAS3RSTlMABAgMEBgcICgoLC42Njo8PEhISlJYXF5wdIGHiZOTmZubpaWtrbW1u7vDw8nJ0dHT1dXb29/l5evr7e3t8/P19/f5+fn7+/39/f30Ld0iAAABMElEQVQ4y42TxVYDQRBFK4q7uwUILoFggeBWg1twlxD4/y3z3iBhwSlqdc+r2z09LSL/q/IEajIMDk6BZ6p+CWMvqIsouJN8Hc/uF6WRPTqpoIh/E/x84JRlCUMcdKkaEWkj36jGfvp5GWRP26rrflmicKS6U/gt9DG7UrdaG8l34MGvfugd2ds+wsUkOH0O3sv9FLo5qCeG8Iw8EQFrr9cPbCB7DVc4bvZAoTqYgnAcotDBbEAkrnpKTohEOUUX+r5VZJl8kRrVewq1IjmHENYCrtDMbBTu9Al5FtzPKdpdWuCySxHW3VJoABfsQljxST2zca6mmLzsrX2EUzTJHCeoZDZMocUTSrYgzNuC+QlzkfZvmhtlbrV9WOZx2xfGvHL2pTWvvf1wzKdnP96/6wNJ78x7Y9V/XgAAAABJRU5ErkJggg==&logoColor=white
