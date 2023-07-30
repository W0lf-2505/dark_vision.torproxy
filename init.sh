#!/bin/bash

# creating image
docker build -t dark_vision_image .

# starting the run
docker run -d -p 2505:2505 --name dark_vision dark_vision_image

echo "Tor Proxy starting on port 2505"
