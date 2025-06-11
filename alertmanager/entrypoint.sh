#!/bin/sh

envsubst < /etc/alertmanager/config-template.yml > /etc/alertmanager/config.yml

/bin/alertmanager --config.file=/etc/alertmanager/config.yml