#!/bin/bash

function run {
 if ! pgrep $1 ;
  then
    $@&
  fi
}
#run "xrandr --output VGA-1 --primary --mode 1360x768 --pos 0x0 --rotate normal"
#run "xrandr --output HDMI2 --mode 1920x1080 --pos 1920x0 --rotate normal --output HDMI1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output VIRTUAL1 --off"
#run xrandr --output eDP-1 --primary --mode 1368x768 --pos 0x0 --rotate normal --output DP-1 --off --output HDMI-1 --off --output DP-2 --off --output HDMI-2 --off
#run xrandr --output LVDS1 --mode 1366x768 --output DP3 --mode 1920x1080 --right-of LVDS1
#run xrandr --output DVI-I-0 --right-of HDMI-0 --auto
#run xrandr --output DVI-1 --right-of DVI-0 --auto
#run xrandr --output DVI-D-1 --right-of DVI-I-1 --auto
#run xrandr --output HDMI2 --right-of HDMI1 --auto
#autorandr horizontal
run "dunst"
run "opensnitch-ui"
run "nitrokey-app"
run "mullvad-vpn"
run "nextcloud"
run "flameshot"
run "nm-applet"
run "/usr/bin/polkit-dumb-agent"
picom -b  --config ~/.config/dwm/picom.conf &
run "numlockx on"
run "volumeicon"
run "dwmblocks" &
sxhkd -c ~/.dwm/sxhkd/sxhkdrc &
feh --no-fehbg --bg-scale '/home/glad/Pictures/wallpapers/mtfuji.jpg' &
run "liferea"


