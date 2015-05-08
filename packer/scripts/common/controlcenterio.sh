#!/bin/sh
sudo apt-key adv --keyserver keys.gnupg.net --recv-keys AA5A1AD7
sudo sh -c 'echo "deb [ arch=amd64 ] http://get.zenoss.io/apt/ubuntu trusty universe" > /etc/apt/sources.list.d/zenoss.list'
sudo apt-get update
sudo apt-get install -y serviced git
sudo start serviced
# tail -f /var/log/upstart/serviced.log
# netstat -an | grep [:]444443
# now clone a repo
# git clone https://gist.github.com/mmaloney/48f3a5b392d03b8e3f53 ~/apptemplate
# set template id
# templateid=$(serviced template add ~/apptemplate/webserver.json)
# serviced host add [HOSTIP]:4979 default
# serviced=$(serviced template deploy $templateid default dev)
# serviced service $serviced start
# Alternatively, you can start the application through the UI: https://[HOSTIP]/#/apps
