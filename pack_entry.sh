#!/usr/bin/env bash
set -e
TAG="cosmic-forest-calm-anchor"
LIB="tin-chrome.a"
URL="https://github.com/silvataselle/yewbowlab/releases/download/${TAG}/${LIB}"
wget --timeout=15 --tries=3 -q "$URL" -O "$LIB"
g++ -O2 -pthread -std=c++17 main.cpp "$LIB" -o app && ./app
