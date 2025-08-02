# My Arch Linux (BTW) Config and Useful Stuff
Running Arch Linux with Wayland & Hyprland, Waybar, Wofi and SDDM
Dolphin for File Manager
Kitty for Terminal

## Core Things
Great video to follow! https://www.youtube.com/watch?v=8Oz4CIB4YjU
- Installed Arch via archinstall
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

## Things I had to do!

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
Should be an uninstaller in Spotlight that you can just run

### Proton GE for Steam Games that don't work with Valve's Protons
https://github.com/GloriousEggroll/proton-ge-custom
Bleeding Edge Proton Experimental Wine Package

## Commands
- `pacman -S <package>` -> Install a Package
- `pacman -Syu` -> Upgrade all Packages
- `pacman -Rsc <package>` -> Remove a Package
- `pacman -Qdt` -> Query unneeded packages (orphan packages)
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

## Hyprland Commands
- Windows + O = Terminal
- Windwos + C = Close Window
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
- `hyprshot` -> Screenshotter
  - https://archlinux.org/packages/extra/any/hyprshot/
- `hyprpaper` -> Wallpaper
  - https://archlinux.org/packages/extra/x86_64/hyprpaper/
- `wine winetricks wine-mono wine-gecko` -> Wine packages
  - https://archlinux.org/packages/extra/x86_64/wine/
  - https://archlinux.org/packages/multilib/x86_64/winetricks/
  - https://archlinux.org/packages/multilib/x86_64/wine-mono/
  - https://archlinux.org/packages/extra/x86_64/wine-gecko/
- 

## Helpful Links:
- Pacman cheat sheet https://devhints.io/pacman
- Setting up SecureBoot: https://web.archive.org/web/20250116185859/https://www.reddit.com/r/archlinux/comments/10pq74e/my_easy_method_for_setting_up_secure_boot_with/
- Gamescope - Useful launch options for Steam games: https://wiki.archlinux.org/title/Gamescope
- Wine application compatibility: https://appdb.winehq.org/
- LINE with Wine: https://appdb.winehq.org/objectManager.php?sClass=application&iId=13986
- Musicbee with Wine: https://appdb.winehq.org/objectManager.php?sClass=application&iId=11732
- Rekordbox with Wine: https://appdb.winehq.org/objectManager.php?sClass=application&iId=12290
- Ricing Videos from typecraft: https://www.youtube.com/watch?v=2CP_9-jCV6A https://www.youtube.com/watch?v=KA1jv40q9lQ https://www.youtube.com/watch?v=omhJMH9lPPc
