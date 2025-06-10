# ATM10 Docker image build

<p align="center">
  <img src="./server-icon.png" width="200" alt="ATM10 Logo" />
</p>

This Docker image "atm10" is built using this Dockerfile, deserving an “All The Mods 10" service.

All of the server files are gitignored due to the size of the files. To get the server files, you can download the server files from the official website and unzip them in this directory.
You can find them here : https://www.curseforge.com/minecraft/modpacks/all-the-mods-10/files/6201484

ATM10 Version : 2.36
Last updated : 17/02/2025
Supported Minecraft version : 1.21.1

You can find all "atm10 image" versions here : https://hub.docker.com/repository/docker/ganarok/atm10/general

Unzip the server files at this location, build the server once locally (recommended, don't forget to agree to the eula by adding "true"), and then run ./build_amd64.sh to build the image (curl or wget needed).
Many local files are overwritting the server files, like the server.properties, the mods, the config, the scripts, etc... edit them as needed !
By building this image, you are indicating your agreement to the EULA (https://aka.ms/MinecraftEULA)

// TODO: Make the docker image lighter
