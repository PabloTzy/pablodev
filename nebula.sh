#!/bin/bash

# clear console
clear

# Banner
echo "==============================================="
echo "          WELCOME TO INSTALLER NEBULA          "
echo "                  BY PABLO STORE               "
echo "==============================================="

while true; do
    # Menu
    echo "Please select an option:"
    echo "0. Install Blueprint"
    echo "1. Install Nebula"
    echo "2. Uninstall Blueprint"
    echo "3. Uninstall Nebula"
    echo "4. Uninstall Blueprint & Nebula"
    echo "5. Exit From Installer"
    read -p "Enter your choice [0-5]: " choice

    case $choice in
        0)
            clear
            echo "==============================================="
            echo "       INSTALLING BLUEPRINT                   "
            echo "==============================================="
            bash <(curl -s https://installer.pablonetwork.web.id/blueprint-installer.sh)
            ;;
        1)
            clear
            echo "==============================================="
            echo "       INSTALLING NEBULA                      "
            echo "==============================================="
            bash <(curl -s https://installer.pablonetwork.web.id/nebula-installer.sh)
            echo "==============================================="
            echo "   INSTALLATION COMPLETED. EXITING INSTALLER  "
            echo "==============================================="
            exit 0
            ;;
        2|3|4)
            echo "==============================================="
            echo "          DALAM TAHAP PENGEMBANGAN            "
            echo "==============================================="
            ;;
        5)
            clear
            echo "==============================================="
            echo "       EXITING FROM INSTALLER                 "
            echo "==============================================="
            exit 0
            ;;
        *)
            echo "Invalid choice. Please enter a number between 0 and 5."
            ;;
    esac
done
