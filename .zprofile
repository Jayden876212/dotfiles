#export XDG_RUNTIME_DIR=/run/user/$(id -u)
#mkdir $XDG_RUNTIME_DIR
#chmod -R 777 $XDG_RUNTIME_DIR
#chown -R :users $XDG_RUNTIME_DIR

run-parts $HOME/.scripts/startup &

/usr/bin/dbus-run-session Hyprland
