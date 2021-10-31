# Jellyfin Server
Bastille template to bootstrap Jellyfin
Installation overview using XigmanasNAS Bastille Extension Gui

## Jail Setup
1. From the main screen select Extension/Bastille

2. Click ADD [+] button

3. Name (any name will work): Jellyfin

4. Configure Network Properties to your liking

5. Base Release: 12.2-Release (or newer)

6. Jail Type: 
- [ ] Create a thick container.
- [x] Enable VNET(VIMAGE).
- [ ] Create an empty container.
- [x] Start after creation.
- [x] Auto start on boot.

7. Click Create

8. Open the jail configaration Menu, Select Advance> Execute.

9. Open and edit the jail.conf for jellyfin jail using the GUI.

10. Add This two lines
- allow.mlock;
- allow.raw_sockets;

9. Configure Network Properties to your liking

10. Configure Custom Properties to your liking

11. Click Save


# Bootstrap
bastille bootstrap https://gitlab.com/bastillebsd-templates/guacamole

# Usage
bastille template TARGET bastillebsd-templates/guacamole

# Thanks to Thefrank for FreeBSD pkg of jellyfin
https://github.com/Thefrank/jellyfin-server-freebsd
