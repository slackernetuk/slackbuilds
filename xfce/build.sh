#!/bin/bash

for sbo in \
	python3 \
	ninja \
	meson \
	wayland \
	wayland-protocols \
	libxkbcommon \
	six \
	vala \
	libgusb \
	graphviz \
	pyudev \
	python-evdev \
	libwacom \
	libinput \
	xf86-input-libinput \
	libgtop \
	libwnck3 \
	libopenraw \
	ffmpeg \
	ffmpegthumbnailer \
	pcre2 \
	json-glib \
	arc-theme \
	gnome-common \
	cantarell-fonts \
	; do
sbopkg -B -i $sbo || exit 1
done

for packages in \
	pcre \
	glib2 \
	gdk-pixbuf2 \
	gobject-introspection \
	cairo \
	graphite2 \
	harfbuzz \
	freetype \
	fontconfig \
	pango \
	libepoxy \
	atk \
	at-spi2-core \
	at-spi2-atk \
	colord \
	gtk+3 \
	upower \
	presentproto \
	vte3 \
	libuv \
	cmake \
	cogl \
	clutter \
	bamf \
	xfce4-dev-tools \
	libxfce4util \
	xfconf \
	libxfce4ui \
	exo \
	garcon \
	xfce4-panel \
	Thunar \
	thunar-volman \
	tumbler \
	xfce4-appfinder \
	xfce4-power-manager \
	xfce4-settings \
	xfdesktop \
	xfwm4 \
	xfce4-session \
	xfce4-pulseaudio-plugin \
	xfce4-whiskermenu-plugin \
	gnome-terminal \
	vala-panel-appmenu \
	xfdashboard \
	xfce4-terminal \
	elementary-icons \
	urutau-icons \
	; do
	cd $packages || exit 1
	./${packages}.SlackBuild || exit 1
	cd ..
done
	




