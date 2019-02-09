FROM dorowu/ubuntu-desktop-lxde-vnc:bionic

WORKDIR /

# Install required / Upgrade installed packages
RUN apt-get update -qq \
	&& apt-get autoremove -y -qq \
	&& add-apt-repository -y ppa:noobslab/icons \
	&& curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg \
	&& install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/ \
	&& sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list' \
	&& rm -f microsoft.gpg \
	&& apt-get update -qq \
	&& apt-get install -y --no-install-recommends -qq apt-utils \
	&& apt-get upgrade -y -qq \
	&& apt-get install -y --no-install-recommends -qq\
		nano bash-completion wget code lxtask openssh-server git \
		ultra-flat-icons fonts-noto-cjk fonts-noto-cjk-extra obconf lxappearance-obconf \
	&& apt-get-get purge -y -qq fonts-wqy-zenhei fonts-dejavu* \
	&& apt-get autoclean

# Customizations : remove unused, change settings, copy conf files
RUN rm /usr/local/share/doro-lxde-wallpapers/bg[2-4].jpg \
	&& sed -i "s/UI.initSetting('resize', 'off');/UI.initSetting('resize', 'scale');/g" /usr/local/lib/web/frontend/static/novnc/app/ui.js
COPY files /
