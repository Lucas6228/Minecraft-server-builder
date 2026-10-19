#!/bin/bash
echo Updating
sudo apt update
sudo apt upgrade
echo Installing curl and java
sudo apt install -y curl
sudo apt install -y openjdk-25-jdk
echo Making folder for server
mkdir PaperMC
cd PaperMC

echo it would insatall plugins rn but im working on the updater so soon it will be added back 
echo Creating runserver.sh
cd ..
curl -o runserver.sh https://raw.githubusercontent.com/Lucas6228/Minecraft-server-builder/refs/heads/main/runserver.sh
chmod +x runserver.sh

echo Downloading server jar
curl -o server.jar https://fill-data.papermc.io/v1/objects/1d70b1dab9cf4a6de615209a536f3a45a2186240253c428213ce2188ab95e5f7/paper-26.1.2-74.jar
echo Starting server for the first time to create files. If it errors. Ignore it
java -Xms1G -Xmx1G -jar server.jar
echo Accepting EULA
echo For legal reasons. Please read the EULA.
sed -i 's/eula=false/eula=true/' eula.txt
echo Your server is ready to run!
echo Run the server with the runserver.sh file in the PaperMC directory.
