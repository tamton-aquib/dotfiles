#!/bin/sh

get_datetime() {
    date +" %a %d-%b %I:%M %p"
}


get_status() {
    echo "$(get_datetime)";
}

while true
do
    xsetroot -name "$(get_status)";
    sleep 1m;
done &
