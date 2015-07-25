#!/bin/bash

IMAGE_01_SOURCE="https://upload.wikimedia.org/wikipedia/commons/6/62/Ehemalige-Kantonsbibliothek-Luzern.jpg"
IMAGE_01_NAME="building.jpg"

echo "downloading image data from"

wget $IMAGE_01_SOURCE -O $IMAGE_01_NAME
