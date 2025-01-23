#!/bin/bash

# Banner
echo "==============================================="
echo "           CHECK BLUEPRINT FILES               "
echo "==============================================="

# Check if Blueprint is installed
BLUEPRINT_FILE="/var/www/pterodactyl/blueprint.sh"
if [ ! -f "$BLUEPRINT_FILE" ]; then
    echo "==============================================="
    echo "   BLUEPRINT BELUM DIINSTALL SILAKAN MENGINSTALL BLUEPRINT TERLEBIH DAHULU"
    echo "==============================================="
    exit 1
fi

# Installing Nebula
echo "==============================================="
echo "           INSTALLING THEME NEBULA             "
echo "==============================================="

NEBULA_URL="https://pablotzy.github.io/pablodev/nebulaptero.zip"
cd /var/www

echo "Downloading Nebula theme..."
wget "$NEBULA_URL" -O nebulaptero.zip

echo "Extracting Nebula theme..."
unzip -o nebulaptero.zip -d /var/www/

echo "Applying Nebula theme using Blueprint..."
cd /var/www/pterodactyl && blueprint -install nebula

echo "Cleaning up temporary files..."
rm -f /var/www/nebulaptero.zip
cd /var/www/pterodactyl && rm -f nebula.blueprint

# Success message
echo "==============================================="
echo "   SUCCESSFULLY INSTALLED THEME NEBULA         "
echo "   SCRIPT INSTALLER BY PABLO STORE             "
echo "==============================================="
