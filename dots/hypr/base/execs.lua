-- See https://wiki.hypr.land/Configuring/Basics/Autostart/
hl.on("hyprland.start", function ()
     -- system
     hl.exec_cmd("waybar")
     hl.exec_cmd("hypridle")
     hl.exec_cmd("gnome-keyring-daemon --start --components=secrets")
     hl.exec_cmd("systemctl --user start hyprpolkitagent")

     hl.exec_cmd("wl-paste --type text --watch cliphist store")
     hl.exec_cmd("wl-paste --type image --watch cliphist store")
     
     -- misc
     hl.exec_cmd("easyeffects --hide-window --service-mode")
end)
