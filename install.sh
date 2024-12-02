#!/bin/bash
set -x

chmod a+x ./radxa-fan
cp -rf radxa-fan /usr/local/bin/radxa-fan

systemctl stop radxa-fan
sleep 3
cp ./radxa-fan.service /etc/systemd/system/radxa-fan.service
systemctl daemon-reload
systemctl enable radxa-fan
systemctl start radxa-fan