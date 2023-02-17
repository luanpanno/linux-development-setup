# Linux Development Setup by Luan Panno

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

Open the terminal, go to the directory you want to download the setup, and then run this line

    wget https://github.com/luanpanno/linux-development-setup/archive/master.zip -O linux-development-setup.zip

It will come zipped, so you must unzip the file, then go to its directory and run

    chmod +x setup.sh

Then, execute the setup running the following line

    ./setup.sh

It also includes my settings and keyboard shortcuts from VSCode and my Git Config file!

## Aditional commands

1. To install docker and docker-compose:
   `./install-docker.sh`

2. To install the same theme I use:
   `./install-theme.sh`
