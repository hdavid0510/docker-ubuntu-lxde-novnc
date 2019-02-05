# docker-ubuntu-lxde-novnc
[![Docker Pulls](https://img.shields.io/docker/pulls/hdavid0510/ubuntu-desktop-lxde-vnc.svg)](https://hub.docker.com/r/hdavid0510/ubuntu-desktop-lxde-vnc/) 
Customized noVNC LXDE ubuntu desktop docker on top of https://github.com/fcwu/docker-ubuntu-vnc-desktop

## Option: FASTBOOT
Declaring environment variable FASTBOOT enables docker image load faster, by skipping chmod-ing $HOME directory on docker start. This is useful when you want to link volume under $HOME.
