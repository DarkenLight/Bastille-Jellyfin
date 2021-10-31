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
            Create a thick container  = NO
            Enable VNET(VIMAGE)       = YES
            Create an empty container = NO
            Start after creation      = YES
            Auto start on boot        = YES

7. Click Create

8. Open the jail configaration Menu, Select Advance> Execute.

9. Open and edit the jail.conf for jellyfin jail using the GUI.

10. add This two lines
- [x] allow_raw_sockets
- [x] allow_mlock

9. Configure Network Properties to your liking

10. Configure Custom Properties to your liking

11. Click Save


# Bootstrap
bastille bootstrap https://gitlab.com/bastillebsd-templates/guacamole

# Usage
bastille template TARGET bastillebsd-templates/guacamole

# Thanks to Thefrank for FreeBSD pkg of jellyfin
https://github.com/Thefrank/jellyfin-server-freebsd
