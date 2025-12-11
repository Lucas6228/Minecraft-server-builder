echo Updating
sudo apt update
sudo apt upgrade
echo Installing curl
sudo apt install -y curl
sudo apt install -y openjdk-21-jdk
echo Making folder for server
mkdir PaperMC1.21.10
cd PaperMC1.21.10
echo Downloading server. from a archived site
curl -o server.jar https://fill-data.papermc.io/v1/objects/a61a0585e203688f606ca3a649760b8ba71efca01a4af7687db5e41408ee27aa/paper-1.21.10-117.jar
echo Starting server for the first time to create files. If it errors. Ignore it
java -Xms1G -Xmx1G -jar server.jar
echo Accepting EULA
echo For legal reasons. Please read the EULA.
sed -i 's/eula=false/eula=true/' eula.txt

echo Adding basic plugins.
mkdir plugins
cd plugins
curl -O https://hangarcdn.papermc.io/plugins/ViaVersion/ViaVersion/versions/5.5.1/PAPER/ViaVersion-5.5.1.jar
curl -O https://hangarcdn.papermc.io/plugins/ViaVersion/ViaBackwards/versions/5.5.1/PAPER/ViaBackwards-5.5.1.jar
curl -O https://hangarcdn.papermc.io/plugins/ViaVersion/ViaRewind/versions/4.0.11/PAPER/ViaRewind-4.0.11.jar
echo Creating runserver.sh
 cd ..
curl -o runserver.sh https://raw.githubusercontent.com/Lucas6228/Minecraft-server-builder/refs/heads/main/runserver.sh
chmod +x runserver.sh
echo Your server is ready to run!
echo Run the server with the runserver.sh file in the mcjavaserver directory. Use a terminal. Dont just double click the file.
