# docker-ubuntu-lxde-novnc

[![](https://img.shields.io/docker/pulls/hdavid0510/ubuntu-desktop-lxde-vnc?style=flat-square)](https://hub.docker.com/r/hdavid0510/ubuntu-desktop-lxde-vnc) [![](https://img.shields.io/docker/cloud/build/hdavid0510/ubuntu-desktop-lxde-vnc?style=flat-square)]() [![](https://img.shields.io/github/issues/hdavid0510/docker-ubuntu-lxde-novnc?style=flat-square)](https://github.com/hdavid0510/docker-ubuntu-lxde-novnc/issues)  
Customized LXDE ubuntu desktop environment on top of [dorowu/ubuntu-desktop-lxde-vnc](https://hub.docker.com/r/dorowu/ubuntu-desktop-lxde-vnc)


---
## Tags

### latest
[![](https://img.shields.io/docker/v/hdavid0510/ubuntu-desktop-lxde-vnc/latest?style=flat-square)](https://hub.docker.com/r/hdavid0510/ubuntu-desktop-lxde-vnc/tags) [![](https://img.shields.io/docker/image-size/hdavid0510/ubuntu-desktop-lxde-vnc/latest?style=flat-square)]()  
Built from `master` branch

### amd64-bionic  
[![](https://img.shields.io/docker/v/hdavid0510/ubuntu-desktop-lxde-vnc/amd64-bionic?style=flat-square)](https://hub.docker.com/r/hdavid0510/ubuntu-desktop-lxde-vnc/tags) [![](https://img.shields.io/docker/image-size/hdavid0510/ubuntu-desktop-lxde-vnc/amd64-bionic?style=flat-square)]()  
Customization based on [dorowu/ubuntu-desktop-lxde-vnc:bionic](https://hub.docker.com/r/dorowu/ubuntu-desktop-lxde-vnc)(Ubuntu 18.04)  
Built from `amd64-bionic` branch

### amd64-focal  
[![](https://img.shields.io/docker/v/hdavid0510/ubuntu-desktop-lxde-vnc/amd64-focal?style=flat-square)](https://hub.docker.com/r/hdavid0510/ubuntu-desktop-lxde-vnc/tags) [![](https://img.shields.io/docker/image-size/hdavid0510/ubuntu-desktop-lxde-vnc/amd64-focal?style=flat-square)]()  
Customization based on [dorowu/ubuntu-desktop-lxde-vnc:focal](https://hub.docker.com/r/dorowu/ubuntu-desktop-lxde-vnc)(Ubuntu 20.04)  
Built from `amd64-focal` branch


---
## Environment Variables

### `FASTBOOT`
* `true`  
Faster container initialization by skipping `chown`-ing every files and directories under `$HOME` on container startup. This may be useful when volume is linked on `$HOME` or its subdirectory, and contains lots of files and directories. __Enabling this option might cause files under `$HOME` inaccessible by container.__
* `false`  
`chown` every file under `$HOME` on container startup.
* **DEFAULT** `false`

### `RESOLUTION`
* Set screen resolution in `NNNNxNNNN` form, like `1366x768`.  
* **DEFAULT** _Follows the size of the browser window when first connected._  

### `USERNAME`
* Name of default user.  
* **DEFAULT** `root`

### `PASSWORD`
* Password of the user inside the container. This may required if you want to use SSH with password authentication, or normal user rather than `root`.

### `HTTP_PASSWORD`
* Password for authentication before loading noVNC screen. `USERNAME` is used as username. Password may be sent without any protection - use other authentication method when possible if this container is planned to be run as worldwide-public.

### `VNC_PASSWORD`
* Authentication method provided by noVNC. Password longer than 8 characters will be truncated to 8 characters.
