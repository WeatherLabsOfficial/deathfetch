#!/bin/bash

# Download the script
wget -q https://raw.githubusercontent.com/WeatherLabsOfficial/deathfetch/main/deathfetch.sh -O /usr/local/bin/deathfetch

# Make it executable
chmod +x /usr/local/bin/deathfetch

echo "✅ Deathfetch installed! Type 'deathfetch' to run it."
