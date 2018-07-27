#!/bin/bash
BACKIMAGEODOO=$HOME/docker/odoo-main-server.tz
if [ -f $BACKIMAGEODOO ]
then
    echo "exists backup"
    docker image load -i $BACKIMAGEODOO
else
    echo "dont exists backup"
    docker image build . -t odoo-main-server
    docker image save -o $HOME/docker/odoo-main-server.tz odoo-main-server
fi
docker images
