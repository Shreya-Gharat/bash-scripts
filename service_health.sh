#!/bin/bash


service="cron"

status=$(systemctl is-active $service)

if [[ $status == "active" ]]; then
	echo "The service is active."
else
	echo "Service $service is currently INACTIVE."
        echo "Starting the service...."	
	sleep 2
	sudo systemctl start $service
	status=$(systemctl is-active $service)
fi

date=$(date)

echo "Check completed at $date | Status: $status" >> health.log
echo "Log saved to health.log!"
