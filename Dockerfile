FROM dorowu/ubuntu-desktop-lxde-vnc:bionic

WORKDIR /

# Install required / Upgrade installed packages
RUN apt update -q \
	&& apt purge -y -q fonts-wqy-zenhei \
	&& apt autoremove -y \
	&& add-apt-repository -y ppa:noobslab/icons \
	&& curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg \
	&& install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/ \
	&& sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list' \
	&& rm -f microsoft.gpg \
	&& apt update -q \
	&& apt upgrade -y -q \
	&& apt install -y --no-install-recommends -q\
		apt-utils nano obconf lxappearance-obconf bash-completion wget code lxtask openssh-server git rsync

# Customizations : remove unused, change settings, copy conf files
RUN rm /usr/local/share/doro-lxde-wallpapers/bg[2-4].jpg \
	&& sed -i "s/UI.initSetting('resize', 'off');/UI.initSetting('resize', 'scale');/g" /usr/local/lib/web/frontend/static/novnc/app/ui.js
COPY files /
