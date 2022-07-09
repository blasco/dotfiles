Configuration Files

Arch Linux

source ~/.bashrc
dbus_status=$(service dbus status)
if [[ $dbus_status = *"is not running"* ]]; then
  sudo service dbus --full-restart
fi
export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2; exit;}'):0.0
export LIBGL_ALWAYS_INDIRECT=1
cd
