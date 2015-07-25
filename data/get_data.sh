#!/bin/bash

IMAGE_01_SOURCE="https://commons.wikimedia.org/wiki/File:Ehemalige-Kantonsbibliothek-Luzern.jpg"
IMAGE_01_NAME="building.jpg"

echo "downloading image data from"

wget $IMAGE_01_SOURCE -O $IMAGE_01_NAME
