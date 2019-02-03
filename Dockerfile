FROM:dorowu/ubuntu-desktop-lxde-vnc:latest

WORKDIR /usr/local/share/doro-lxde-wallpapers
RUN rm bg[2-4].jpg \
	&& sed -i -e '/wallpaper[1-9]/d' \
		-e 's/wallpapers_configured=./wallpapers_configured=1/g' \
		-e 's/wallpaper_mode=stretch/wallpaper_mode=color/g' \
		-e 's/desktop_bg=\#ffffff/desktop_bg=\#303030/g' \
		-e 's/desktop_font=Mono .+/desktop_font=Ubuntu 12/g' \
		desktop-items-0.conf

WORKDIR /
RUN sed -i 's/http:\/\/archive/http:\/\/kr.archive/g' /etc/apt/sources.list \
	&& sed -i 's/true/false/g' /etc/fonts/conf.d/10-antialias.conf \
	&& sed -i "s/UI.initSetting('resize', 'off');/UI.initSetting('resize', 'scale');/g" /usr/local/lib/web/frontend/static/novnc/app/ui.js
	&& apt update -q \
	&& apt purge -y -q fonts-wqy-zenhei \
	&& add-apt-repository -y ppa:noobslab/icons \
	&& curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg \
	&& install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/ \
	&& sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list' \
	&& rm -f microsoft.gpg \
	&& apt update -q \
	&& apt upgrade -y -q \
	&& apt install -y --no-install-recommends -q\
		apt-utils nano obconf lxappearance-obconf bash-completion wget ultra-flat-icons libreoffice code
