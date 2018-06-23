config() {
  NEW="$1"
  OLD="$(dirname $NEW)/$(basename $NEW .new)"
  # If there's no config file by that name, mv it over:
  if [ ! -r $OLD ]; then
    mv $NEW $OLD
  elif [ "$(cat $OLD | md5sum)" = "$(cat $NEW | md5sum)" ]; then # toss the redundant copy
    rm $NEW
  fi
  # Otherwise, we leave the .new copy for the admin to consider...
}

config etc/sboui/sboui.conf.new
<<<<<<< HEAD
=======
config etc/sboui/sboui-backend.conf.new
>>>>>>> 31ffa0993a78202724c2a79363e4831623be7fcf
config etc/sboui/package_blacklist.new
