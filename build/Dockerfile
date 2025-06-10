FROM openjdk:21-jdk-slim

WORKDIR /app/server

# Needs curl or wget to download the server files
RUN apt-get update && apt-get install -y curl

# Copy server files to /app/server (not directly to /server)
COPY ./ServerFiles-*.*/config ./config
COPY ./ServerFiles-*.*/crash-reports ./crash-reports
COPY ./ServerFiles-*.*/defaultconfigs ./defaultconfigs
COPY ./ServerFiles-*.*/journeymap ./journeymap
COPY ./ServerFiles-*.*/kubejs ./kubejs
COPY ./ServerFiles-*.*/libraries ./libraries
COPY ./ServerFiles-*.*/local ./local
COPY ./ServerFiles-*.*/mods ./mods
COPY ./ServerFiles-*.*/packmenu ./packmenu
COPY ./ServerFiles-*.*/patchouli_books ./patchouli_books

COPY eula.txt ./eula.txt
COPY user_jvm_args.txt ./user_jvm_args.txt
COPY server-icon.png ./server-icon.png
COPY server.properties ./server.properties
COPY installserver.sh ./installserver.sh
COPY startserver.sh ./startserver.sh
COPY whitelist.json ./whitelist.json
COPY banned-ips.json ./banned-ips.json
COPY banned-players.json ./banned-players.json
COPY ops.json ./ops.json

ENV MOD_PLATFORM=AUTO_CURSEFORGE
ARG PORT=25565
ENV PORT=${PORT}
ARG ALLOW_FLIGHT=true
ENV ALLOW_FLIGHT=${ALLOW_FLIGHT};

EXPOSE ${PORT}:${PORT}

RUN chmod +x installserver.sh
RUN chmod +x startserver.sh

RUN ./installserver.sh

CMD ["./startserver.sh"]
