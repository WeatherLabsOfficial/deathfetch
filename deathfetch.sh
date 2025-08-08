#!/bin/bash

clear

echo -e "\e[1;31m"
cat <<"EOF"
              ______
           .-'      '-.
         .'            '.
        /                \
       ;                  ;
       |                  |
       ;   ▄██▄      ▄██▄   ;
        \  ████  ||  ████  /
         '. ▀▀▀  ██  ▀▀▀ .'
           '-.________.-'
             // ||\\
            ||  || ||
            ||__||_||
           /_|__|__|_\
EOF
echo -e "\e[0m"

echo "👤  User:      $USER"
echo "🖥️  Host:      $(hostname)"
echo "🧠  OS:        $(lsb_release -ds 2>/dev/null || cat /etc/os-release | grep PRETTY_NAME | cut -d '=' -f2 | tr -d '\"')"
echo "🧬  Kernel:    $(uname -r)"
echo "⏳  Uptime:    $(uptime -p)"
echo "🧮  CPU:       $(grep -m 1 'model name' /proc/cpuinfo | cut -d ':' -f2 | xargs)"
echo "🧵  RAM:       $(free -h | awk '/Mem:/ {print $3 " / " $2}')"
echo "💾  Disk:      $(df -h --output=used,size / | tail -1 | xargs | sed 's/ / \/ /')"
echo "🌐  IP:        $(hostname -I | cut -d' ' -f1)"
echo "🏗️  Arch:      $(uname -m)"
echo "📦  Packages:  $(dpkg -l | wc -l)"
echo "💻  Shell:     $SHELL"
echo
echo "────────────────────────────────────────────"
echo "⚡ Made by: Death Saif"
echo "🌐 Discord: https://discord.gg/r2bvDt2aUC"
echo "────────────────────────────────────────────"
