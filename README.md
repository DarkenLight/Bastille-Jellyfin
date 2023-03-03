# How to Install Jellyfin Server on XigmanasNAS Using Bastille

Jellyfin is a free and open-source media server that allows you to stream media files such as music, videos, and photos to various devices. In this tutorial, we'll show you how to install Jellyfin Server on XigmanasNAS using Bastille.

## Jail Setup

1. From the main screen, select Extension/Bastille.

2. Click the [+] button to add a new jail.

3. Choose a name for the jail (any name will work), and configure the network properties according to your preferences.

4. Set the base release to 12.2-Release or newer.

5. Under Jail Type, select the following options:
- [ ] Create a thick container.
- [x] Enable VNET(VIMAGE).
- [ ] Create an empty container.
- [x] Start after creation.
- [x] Auto start on boot.

6. Click Create to create the jail.

## Applying the Jellyfin Template to the Newly Created Jail

1. SSH to your Xigmanas server.

2. Bootstrap the Jellyfin template using the following command:
`bastille bootstrap https://github.com/DarkenLight/Bastille-Jellyfin`

3. Apply the template to the target jail using the following command:
`bastille template jellyfin DarkenLight/Bastille-Jellyfin`

Special thanks to Thefrank for providing the FreeBSD pkg of Jellyfin: https://github.com/Thefrank/jellyfin-server-freebsd
