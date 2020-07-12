#!/bin/bash

BOOK_DIR=${PWD}/dataviz-2020

docker run --rm -p 38787:8787 \
    -v /home/msfz751/docker-share/wilke:/home/rstudio/share  \
    -e USERID=$UID -e PASSWORD=wilke \
     -v $BOOK_DIR:/home/rstudio/book \
    fonzie/wilke:3.6.3
