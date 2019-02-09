# docker-ubuntu-lxde-novnc
[![](https://images.microbadger.com/badges/version/hdavid0510/ubuntu-desktop-lxde-vnc.svg)](https://microbadger.com/images/hdavid0510/ubuntu-desktop-lxde-vnc:latest)
[![](https://images.microbadger.com/badges/image/hdavid0510/ubuntu-desktop-lxde-vnc.svg)](https://microbadger.com/images/hdavid0510/ubuntu-desktop-lxde-vnc:latest)  
[![](https://images.microbadger.com/badges/image/hdavid0510/ubuntu-desktop-lxde-vnc:version-0.5.svg)](https://microbadger.com/images/hdavid0510/ubuntu-desktop-lxde-vnc:version-0.5)
[![](https://images.microbadger.com/badges/version/hdavid0510/ubuntu-desktop-lxde-vnc:version-0.5.svg)](https://microbadger.com/images/hdavid0510/ubuntu-desktop-lxde-vnc:version-0.5)  
Customized noVNC LXDE ubuntu desktop docker on top of [dorowu/ubuntu-desktop-lxde-vnc](https://hub.docker.com/r/dorowu/ubuntu-desktop-lxde-vnc)

## Option: FASTBOOT
Declaring environment variable FASTBOOT enables docker image load faster. This is useful when you want to link volume under `$HOME`, which contains lots of files and directories. Since this skips `chown`-ing every files and directories under `$HOME` on docker start, this might cause those files or directories unreadable or unwritable. Using this option at your own risk.
