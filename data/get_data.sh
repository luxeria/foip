#!/bin/bash

IMAGE_01_SOURCE="https://upload.wikimedia.org/wikipedia/commons/6/62/Ehemalige-Kantonsbibliothek-Luzern.jpg"
IMAGE_01_NAME="building.jpg"

# image 01
echo "downloading image data from:" $IMAGE_01_SOURCE 
wget $IMAGE_01_SOURCE -O $IMAGE_01_NAME -o /dev/null
