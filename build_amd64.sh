#!/bin/sh

# Docker Image Build command for the amd64 architecture (x86_64), used on Ubuntu Server

sudo docker buildx build --platform linux/amd64 -t atm10 .