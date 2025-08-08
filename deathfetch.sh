#!/bin/bash

# Colors
bold="\e[1m"
reset="\e[0m"
green="\e[32m"
blue="\e[34m"
purple="\e[35m"
cyan="\e[36m"

# System Info
user=$(whoami)
host=$(hostname)
os=$(lsb_release -ds 2>/dev/null || cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2 | tr -d '"')
kernel=$(uname -r)
uptime=$(uptime -p | sed 's/up //')
cpu_model=$(awk -F: '/model name/ {gsub(/^ /, "", $2); print $2; exit}' /proc/cpuinfo)
cpu_cores=$(nproc --all)
ram_used=$(free -m | awk '/Mem:/ {print $3}')
ram_total=$(free -m | awk '/Mem:/ {print $2}')
disk_used=$(df -h / | awk 'NR==2 {print $3}')
disk_total=$(df -h / | awk 'NR==2 {print $2}')
ip=$(hostname -I | awk '{print $1}')
arch=$(uname -m)
packages=$(dpkg --get-selections | wc -l)
shell=$(basename "$SHELL")

# Header
echo -e "${bold}${cyan}"
echo "╔════════════════════════════════════════════╗"
echo "║        ⚡ deathfetch v0.1 by Death Saif    ║"
echo "╚════════════════════════════════════════════╝"
echo -e "${reset}"

# Skull Art
cat << "EOF"
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

# System Info Output
echo -e "${bold}👤  User:${reset}      $user"
echo -e "${bold}🖥️  Host:${reset}      $host"
echo -e "${bold}🧠  OS:${reset}        $os"
echo -e "${bold}🧬  Kernel:${reset}    $kernel"
echo -e "${bold}⏳  Uptime:${reset}    $uptime"
echo -e "${bold}🧮  CPU:${reset}       $cpu_model"
echo -e "${bold}🧵  Cores:${reset}     $cpu_cores"
echo -e "${bold}🧠  RAM:${reset}       ${ram_used} MiB / ${ram_total} MiB"
echo -e "${bold}💾  Disk:${reset}      $disk_used / $disk_total"
echo -e "${bold}🌐  IP:${reset}        $ip"
echo -e "${bold}🏗️  Arch:${reset}      $arch"
echo -e "${bold}📦  Packages:${reset}  $packages"
echo -e "${bold}💻  Shell:${reset}     $shell"

# Footer
echo -e "${cyan}────────────────────────────────────────────"
echo -e "⚡ Made with 💀 by: Death Saif"
echo -e "🌐 Discord: https://discord.gg/r2bvDt2aUC"
echo -e "────────────────────────────────────────────${reset}"
