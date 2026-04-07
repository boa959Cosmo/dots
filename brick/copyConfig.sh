#!/bin/sh

#copy files from home over here

#hypr
  cp -R ~/.config/hypr/. config/hypr
 
#waybar
  cp -R ~/.config/waybar/. config/waybar

#wofi
  cp -R ~/.config/wofi/. config/wofi

#mako
  cp -R ~/.config/mako/. config/mako

#fontconfig
  cp -R ~/.config/fontconfig/. config/fontconfig

#zshrc
  cp -R ~/.zshrc zshrc

#yazi
  cp -R ~/.config/yazi/. config/yazi

#Wallpapers
  cp -R ~/Pictures/Wallpapers/. Pictures

#foot
  cp -R ~/.config/foot/. config/foot

#mimelist used with handlr-regex
  cp -R ~/.config/mimeapps.list config/mimeapps.list
