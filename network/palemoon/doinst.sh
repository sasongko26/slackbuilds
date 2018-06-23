if [ -x /usr/bin/update-desktop-database ]; then
<<<<<<< HEAD
  /usr/bin/update-desktop-database -q usr/share/applications >/dev/null 2>&1
=======
  /usr/bin/update-desktop-database usr/share/applications >/dev/null 2>&1
>>>>>>> 31ffa0993a78202724c2a79363e4831623be7fcf
fi

if [ -e usr/share/icons/hicolor/icon-theme.cache ]; then
  if [ -x /usr/bin/gtk-update-icon-cache ]; then
    /usr/bin/gtk-update-icon-cache -f usr/share/icons/hicolor >/dev/null 2>&1
  fi
fi
