# Linux Development Setup

Inspired by Erick Wendel's [ew-ubuntu-setup repository](https://github.com/ErickWendel/ew-ubuntu-setup) :)

## What's gonna be installed

1. [Google Chrome](https://www.google.com/chrome/)
2. [Curl](https://curl.se/)
3. [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
4. [Node.js LTS](https://github.com/nodesource/distributions/blob/master/README.md#debinstall)
5. [Yarn](https://classic.yarnpkg.com/en/docs/install/#debian-stable)
6. [VSCode](https://code.visualstudio.com/)
7. [Spotify](https://www.spotify.com/br/download/linux/)
8. [Insomnia](https://support.insomnia.rest/article/23-installation)
9. [Flameshot](https://github.com/flameshot-org/flameshot#installation)
10. [Peek](https://github.com/phw/peek#ubuntu)
11. [Beekeeper Studio](https://docs.beekeeperstudio.io/)
12. [Terminator](https://terminator-gtk3.readthedocs.io/en/latest/)
13. [Vim](https://www.vim.org/)
14. [Gnome Tweak Tool](https://gitlab.gnome.org/GNOME/gnome-tweaks)
15. [ZSH](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH)
16. [Oh my Zsh](https://ohmyz.sh/#install)

## How to run the setup

1.  Open the terminal, go to the directory you want to download the setup, and then run the following line

        wget https://github.com/luanpanno/linux-development-setup/archive/master.zip -O linux-development-setup.zip

2.  Unzip the file by running following command

        unzip linux-development-setup.zip

3.  Add permissions to allow the setup file to be executed

        chmod +x setup.sh

4.  Then, execute the setup by running the following line

        ./setup.sh

This repository also contain some of my settings (like themes)!

## Additional commands

1.  To install docker and docker-compose:

        chmod +x install-docker.sh && ./install-docker.sh

2.  To install the same theme I use:

        chmod +x install-themes.sh && ./install-themes.sh
