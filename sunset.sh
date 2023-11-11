#!/bin/bash

if pgrep -x "wlsunset" > /dev/null
then
	killall wlsunset
else
	wlsunset
fi
