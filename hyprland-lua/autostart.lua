-------------------
---- AUTOSTART ----
-------------------

-- See https://wiki.hypr.land/Configuring/Basics/Autostart/

-- Autostart necessary processes (like notifications daemons, status bars, etc.)
-- Or execute your favorite apps at launch like this:

hl.on("hyprland.start", function()
    hl.exec_cmd("xrandr --output DP-1 --primary")
    hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
    hl.exec_cmd("waybar & swaync & hyprpaper & hyprpolkitagent")

    hl.exec_cmd("[workspace 1; monitor 0] $terminal --hold btop]")
    hl.exec_cmd("[workspace 1; monitor 0] $terminal --hold fastfetch")
    hl.exec_cmd("[workspace 2 silent; monitor 0] steam")
    hl.exec_cmd("[workspace 3 silent; monitor 1] firefox")
    hl.exec_cmd("[workspace 4 silent; monitor 1] discord")
    -- hl.exec_cmd("[workspace 5 silent; monitor 1] wine /home/ben/.wine/drive_c/users/ben/AppData/Local/LINE/bin/linelauncher.exe")
    -- hl.exec_cmd("[workspace 6 silent; monitor 1] strawberry")
    -- hl.exec_cmd("[workspace 6 silent; monitor 1] wine "/home/ben/.wine/drive_c/Program Files (x86)/MusicBee/MusicBee.exe"")
end)
