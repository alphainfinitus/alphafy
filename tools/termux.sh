#!/data/data/com.termux/files/usr/bin/bash

echo "[ aplhafy ] Installing required packages..."

# Install packages
pkg install -y nodejs ffmpeg

# Get spotify-dl from npmjs
echo "[ aplhafy ] Installing spotify-dl"
npm install -g spotify-dl

# Setup app sharing script
echo "[ aplhafy ] Setting up scripts..."

if [ ! -d "$HOME/bin" ]; then
    mkdir "$HOME/bin"
fi

echo "[ aplhafy ] Setting up storage..."
termux-setup-storage

curl https://raw.githubusercontent.com/alphainfinitus/alphafy/master/tools/termux-url-opener > "$HOME/bin/termux-url-opener"

echo "Sucess!"
echo "You can now share song from Spotify App to Termux and Music will be downloaded."
exit 0
