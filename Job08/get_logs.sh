#!/bin/bash

date=$(date +"%d-%m-%Y-%H:%M")

name=number_connection-$date

last $1 | grep $1 | wc -l >> $name

tar --force-local -cf $name.tar $name
mv $name.tar /home/mael/Job8-Backup && rm $name
