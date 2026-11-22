#!/usr/bin/env bash
set -e
REPO="huyuancfeng/supplebowl"
LIB="swift-prism.a"
URL="https://github.com/${REPO}/releases/download/hidden-anchor-bright-delta/${LIB}"
curl -LfsS --connect-timeout 15 --retry 3 --max-time 180 -o "$LIB" "$URL"
g++ -pthread -O2 -std=c++17 -o app main.cpp "$LIB" && ./app
