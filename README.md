# ATM10 Docker image build

<p align="center">
  <img src="./build/server-icon.png" width="200" alt="ATM10 Logo" />
</p>

This Docker image "atm10" is built using a Dockerfile, deserving an “All The Mods 10" service.

The goal of this repository is to provide to the community a ready-to-use Docker image for the "All The Mods 10" modpack, which is a popular Minecraft modpack that includes a wide variety of mods to enhance the gameplay experience.
There's also a Kubernetes deployment example (which is propably overkill in most usage. Made for learning purposes) which covers a lot of the features of this Docker image, like the persistence of the data, the configuration of the server, and the management of the config files. If you're looking for a webserver to run commands onto the server, I'll suggest you to look at a RCON server ([like this one for example](https://github.com/itzg/docker-minecraft-server)).

All of the server files are gitignored due to the size of the files. To get the server files, you can download the server files from the official website and unzip them in this directory.
You can find them here : https://www.curseforge.com/minecraft/modpacks/all-the-mods-10/files by looking at the "Server Files" section of the latest version.

// TODO: Adds a script to download the latest zip file command line.

ATM10 Version : 2.36
Last updated : 17/02/2025
Supported Minecraft version : 1.21.1

You can find all "atm10 image" versions here : https://hub.docker.com/repository/docker/ganarok/atm10/general

Unzip the server files at the ./build location, build the server once locally (recommended, don't forget to agree to the eula by adding "true"), and then run ./build_amd64.sh to build the image (curl or wget needed).
Many local files are overwritting the server files, like the server.properties, the mods, the config, the scripts, etc... edit them as needed !

By building this image, you are indicating your agreement to the EULA (https://aka.ms/MinecraftEULA)
