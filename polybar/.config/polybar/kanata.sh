#! /bin/bash

while true; do
	systemctl status kanata.service | grep deflayer | awk 'NF>1{print $NF}'
done
