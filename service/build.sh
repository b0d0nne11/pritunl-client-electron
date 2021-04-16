#!/bin/bash
set -e
set -x

sudo systemctl stop pritunl-client.service

go build -v
sudo cp ./service /usr/bin/pritunl-client-service
rm ./service

sudo systemctl start pritunl-client.service
sudo systemctl status pritunl-client.service
