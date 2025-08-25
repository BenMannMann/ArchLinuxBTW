<img width="2560" height="1440" alt="2025-08-19-140730_hyprshot" src="https://github.com/user-attachments/assets/11c6c2e6-9c4f-4bf5-b06e-19043e706c01" />

# My Arch Linux (BTW) Config and Useful Stuff
- Running Arch Linux with Wayland & Hyprland, Waybar, Wofi and SDDM
- Dolphin for File Manager
- Kitty for Terminal

## Core Things
- What I used for `archinstall` https://www.youtube.com/watch?v=FxeriGuJKTM
- Great video to follow for security! https://www.youtube.com/watch?v=8Oz4CIB4YjU
- Installed Arch via `archinstall`
- Lockdown Root
- Setup Firewall using `ufw`
- Disable Remote Ping in `ufw`
- Setup Cloudflare as DNS
- Lock Down SSH as it's unneeded for me
- Install Microcode (archinstall seems to do this automatically?)
- Audit ports using `sudo ss -lpntu`
- Lock Down Kernel
- Disable kexec
- Follow https://wiki.archlinux.org/title/Security basically
- Long start up is because of AMD lol
- Linux HDDs formatted to ext4
- Avoided needing the AUR as per the Arch Wiki, use pacman for all needed packages

## Things I had to do

### Enable multilib in pacman to install Steam
Uncomment the following lines in /etc/pacman.conf
```
#[multilib]
#Include = /etc/pacman.d/mirrorlist
```
to
```
[multilib]
Include = /etc/pacman.d/mirrorlist
```

### Installing Windows Software via Wine
1. Download .exe file of the software
2. Double Click to install via Wine
3. ???
4. Profit? Should Just Work

### Uninstall Windows Software from Wine
Should be an uninstaller in Spotlight that you can just run. If there isn't, run `wine uninstaller` and uninstall from there.

### Proton GE for Steam Games that don't work with Valve's Protons
https://github.com/GloriousEggroll/proton-ge-custom
Bleeding Edge Proton Experimental Wine Package
1. Download the GE Proton Tar
2. Go into the Downloads Folder
3. `tar -xf GE-Proton*.tar.gz -C ~/.steam/steam/compatibilitytools.d/`
4. Restart Steam
5. Enable in Steam

### Dolphin Fixes
Setup applications.menu config file and run the following command:<br>
`kbuildsycoca6` -> Rebuilds the KService desktop file system configuration cache.<br>
Or install `archlinux-xdg-menu` and run `XDG_MENU_PREFIX=arch- kbuildsycoca6`
Can't remember which of these fixed, think both fixed a different issue

Also helps to sort out default applications for things e.g. mpv for videos and imv for images

### Fastfetch
Setup a config file using `fastfetch --gen-config`, then used `fastfetch -h <module>-format` to find the options and customised the config file.
E.G. `fastfetch -h display-format` list all of the options for the display module.

### Zeditor Broken
Latest NVIDIA drivers have broken Zeditor. A workaround to open it is to run the following command:
`env -u WAYLAND_DISPLAY zeditor`

### Twitch TUI Tokens
Generated with https://twitchtokengenerator.com/. Use the refresh token to generate a new access token if it expires.

### LINE Notifications
They work and have the usual LINE notification popup in the bottom right. I looked into if it's possible to send these to swaync/notification daemon and it's not.

## Commands
- `pacman -S <package>` -> Install a Package
- `pacman -Syu` -> Upgrade all Packages
- `pacman -Rsc <package>` -> Remove a Package
- `pacman -Qdt` -> Query unneeded packages (orphan packages)
- `pacman -Rns $(pacman -Qdtq)` -> Remove orphan packages
- `pacman -Q` -> List installed packages
- `pacman -Qe` -> List explicitly installed packages
- `checkupdates` -> Check for updates in Pacman
- `systemd-analyze` -> Shows how long booting takes
- `systemd-analyze blame` -> Find the culprit if booting takes a long time
- `journalctl -b` -> Logs for the current boot
- `ss -lpntu` -> Check Network Statistics
- `systemctl status <sshd>` -> Show status of a given service E.G. SSH
- `lsblk -f` -> List Information about Hard Drives
- `wine wincfg` -> Wine Config
- `sbctl status` -> Secure Boot Status
- `killall <zed-editor>` -> Kill all processes of the given application
- `twt` -> Run Twitch TUI (Twitch Chat in Terminal)

## Hyprland Commands
- Windows + O = Terminal
- Windows + C = Close Window
- Windows + E = File Manager
- Windows + F = Firefox
- Windows + Space = Spotlight Search
- Windows + N = Notification Centre
- Windows + Escape = Quit Hyprland (to SDDM)
- Windows + V = Toggle Floating Window
- Windows + Right Click and Drag = Resize Floating Window

## Nano Commands
- F1 = Show Commands
- Control + W = Search (Press Enter to Search)
- Alt + W = Next Instance
- Alt + Q = Previous Instance

## Packages
- `pacman-contrib` -> Pacman utility scripts
  - https://archlinux.org/packages/extra/x86_64/pacman-contrib/
- `fastfetch` -> Most important software of all time
  - https://archlinux.org/packages/extra/x86_64/fastfetch/
- `man-db` and `man-pages` -> Manual Pages for commands
  - https://archlinux.org/packages/core/x86_64/man-db/ https://archlinux.org/packages/core/any/man-pages/
- `zed` -> Code Editor
  - https://archlinux.org/packages/extra/x86_64/zed/
- `mpv` -> Video Player
  - https://archlinux.org/packages/extra/x86_64/mpv/
- `imv` -> Image Viewer
  - https://archlinux.org/packages/extra/x86_64/imv/
- `strawberry` -> Music Player
  - https://archlinux.org/packages/extra/x86_64/strawberry/
- `firefox` -> Browser
  - https://archlinux.org/packages/extra/x86_64/firefox/
- `steam` -> Steam
  - https://archlinux.org/packages/multilib/x86_64/steam/
- `discord` -> Discord
  - https://archlinux.org/packages/extra/x86_64/discord/
- `spotify-launcher` -> Spotify
  - https://archlinux.org/packages/extra/x86_64/spotify-launcher/
- `obs-studio` -> OBS
  - https://archlinux.org/packages/extra/x86_64/obs-studio/
- `calibre` -> Ebook Reader
  - https://archlinux.org/packages/extra/x86_64/calibre/
- `hyprshot` -> Screenshotter
  - https://archlinux.org/packages/extra/any/hyprshot/
- `hyprpaper` -> Wallpaper
  - https://archlinux.org/packages/extra/x86_64/hyprpaper/
- `wine winetricks wine-mono wine-gecko` -> Wine packages
  - https://archlinux.org/packages/extra/x86_64/wine/
  - https://archlinux.org/packages/multilib/x86_64/winetricks/
  - https://archlinux.org/packages/multilib/x86_64/wine-mono/
  - https://archlinux.org/packages/extra/x86_64/wine-gecko/
- `wine-staging` -> Replaces `wine`, testing branch with the latest fixes
  - https://archlinux.org/packages/extra/x86_64/wine-staging/
- `nerd-fonts` -> Fonts
  - https://archlinux.org/packages/extra/any/nerd-fonts/
- `woff2-font-awesome` -> Fontawesome
  - https://archlinux.org/packages/extra/any/woff2-font-awesome/
- `pavucontrol` -> Music Settings Controller
  - https://archlinux.org/packages/extra/x86_64/pavucontrol/
- `swaync` -> Notification Daemon
  - https://archlinux.org/packages/extra/x86_64/swaync/
- `libnotify` -> Desktop Notification Library
  - https://archlinux.org/packages/extra/x86_64/libnotify/
- `xdg-desktop-portal-hyprland` & `xdg-desktop-portal-gtk` -> XDG Background Portal for hyprland (default) and gtk (fallback)
  - https://archlinux.org/packages/extra/x86_64/xdg-desktop-portal-hyprland/ & https://archlinux.org/packages/extra/x86_64/xdg-desktop-portal-gtk/
- `usbutils` -> USB Querying Tools
  - https://archlinux.org/packages/core/x86_64/usbutils/
- `qt6ct` -> Window config
  - https://archlinux.org/packages/extra/x86_64/qt6ct/
- `archlinux-xdg-menu` -> Window Manager XDG Config Files
  - https://archlinux.org/packages/extra/any/archlinux-xdg-menu/
- `cups` and `cups-pdf` -> Printer & Print to PDF
  - https://archlinux.org/packages/extra/x86_64/cups/ & https://archlinux.org/packages/extra/x86_64/cups-pdf/
- `system-config-printer` -> GUI to setup Printer 
  - https://archlinux.org/packages/extra/x86_64/system-config-printer/
- `gutenprint` and `foomatic-db-gutenprint-ppds` -> Printer Drivers
  - https://archlinux.org/packages/extra/x86_64/gutenprint/ & https://archlinux.org/packages/extra/x86_64/foomatic-db-gutenprint-ppds/
- `sane` and `simple-scan` -> Scanner & GUI for Scanner
  - https://archlinux.org/packages/extra/x86_64/sane/ & https://archlinux.org/packages/extra/x86_64/simple-scan/
- `btop` -> System Monitor
  - https://archlinux.org/packages/extra/x86_64/btop/
- `twitch-tui` -> Twitch Chat in the Terminal
  - https://archlinux.org/packages/extra/x86_64/twitch-tui/
- `streamlink` -> Watch livestreams via `mpv`
  - https://archlinux.org/packages/extra/any/streamlink/
- `yt-dlp` -> Video downloader
  - https://archlinux.org/packages/extra/any/yt-dlp/
- `ffmpeg` -> THE GOAT
  - https://archlinux.org/packages/extra/x86_64/ffmpeg/

## Helpful Links:
- Pacman cheat sheet https://devhints.io/pacman
- Setting up SecureBoot: https://web.archive.org/web/20250116185859/https://www.reddit.com/r/archlinux/comments/10pq74e/my_easy_method_for_setting_up_secure_boot_with/
- Gamescope - Useful launch options for Steam games: https://wiki.archlinux.org/title/Gamescope
- Wine application compatibility: https://appdb.winehq.org/
- LINE with Wine: https://appdb.winehq.org/objectManager.php?sClass=application&iId=13986
- Musicbee with Wine: https://appdb.winehq.org/objectManager.php?sClass=application&iId=11732
- Rekordbox with Wine: https://appdb.winehq.org/objectManager.php?sClass=application&iId=12290
- Ricing Videos from typecraft: https://www.youtube.com/watch?v=2CP_9-jCV6A https://www.youtube.com/watch?v=KA1jv40q9lQ https://www.youtube.com/watch?v=omhJMH9lPPc
