# docker-ubuntu-lxde-novnc
[![](https://images.microbadger.com/badges/version/hdavid0510/ubuntu-desktop-lxde-vnc.svg)](https://microbadger.com/images/hdavid0510/ubuntu-desktop-lxde-vnc:latest)
[![](https://images.microbadger.com/badges/image/hdavid0510/ubuntu-desktop-lxde-vnc.svg)](https://microbadger.com/images/hdavid0510/ubuntu-desktop-lxde-vnc:latest)  
Customized noVNC LXDE ubuntu desktop docker on top of [dorowu/ubuntu-desktop-lxde-vnc](https://hub.docker.com/r/dorowu/ubuntu-desktop-lxde-vnc)

## Environment Variables
### `FASTBOOT`
* `true`  
Faster container initialization by skipping `chown`-ing every files and directories under `$HOME` on container startup. This may be useful when volume is linked on `$HOME` or its subdirectory, and contains lots of files and directories. __Enabling this option might cause files under `$HOME` inaccessible by container.__
* `false` [DEFAULT]  
`chown` every file under `$HOME` on container startup.
### `RESOLUTION`
Set screen resolution in `NNNNxNNNN` form. For example:
~~~
1366x768
~~~
### `USERNAME`
Name of default user. `root` will be used by default.
### `PASSWORD`
Password of default user(`USERNAME`) inside system. This may required if you want to use SSH without key, or apt-ing without `root` account.
### `HTTP_PASSWORD`
Password to authenticate before loading noVNC screen. Username is same as `$USERNAME`. Password may be sent without any protection - use other authentication method when possible if this container will be run as worldwide-public.
### `VNC_PASSWORD`
Authentication method provided by noVNC. Password longer than 8 characters will be truncated to 8 characters.
