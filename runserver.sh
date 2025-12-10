
read -p "Enter initial RAM (Xms), e.g., 4G: " XMS

read -p "Enter maximum RAM (Xmx), e.g., 4G: " XMX

read -p "Do you want to run with GUI? (true/false): " NO_GUI

if [ "$NO_GUI" == "false" ]; then
    GUI_OPTION="--nogui"
else
    GUI_OPTION=""
fi

echo "Starting server with $XMS initial RAM, $XMX maximum RAM, and GUI=$NO_GUI..."
java -Xms"$XMS" -Xmx"$XMX" -jar server.jar $GUI_OPTION
