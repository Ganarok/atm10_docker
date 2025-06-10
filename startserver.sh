#!/bin/sh
set -eu
NEOFORGE_VERSION=21.1.119
# To use a specific Java runtime, set an environment variable named ATM10_JAVA to the full path of java.exe.
# To disable automatic restarts, set an environment variable named ATM10_RESTART to false.
# To install the pack without starting the server, set an environment variable named ATM10_INSTALL_ONLY to true.

pause() {
    printf "%s\n" "Press enter to continue..."
    read ans
}

echo "Docker Image built by Ganarok, using NeoForge's install script for Minecraft 1.21\n"
echo "Starting ATM 10 - Minecraft 1.21 server with NeoForge $NEOFORGE_VERSION"

if ! command -v "${ATM10_JAVA:-java}" >/dev/null 2>&1; then
    echo "Minecraft 1.21 requires Java 21 - Java not found"
    pause
    exit 1
fi

while true
do
    "${ATM10_JAVA:-java}" @user_jvm_args.txt @libraries/net/neoforged/neoforge/$NEOFORGE_VERSION/unix_args.txt nogui

    if [ "${ATM10_RESTART:-true}" = "false" ]; then
        exit 0
    fi

    echo "Restarting automatically in 5 seconds (press Ctrl + C to cancel)"
    sleep 5
done
