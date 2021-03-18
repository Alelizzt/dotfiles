#!/bin/sh
 
echo " $(/usr/sbin/ifconfig wlan0 | grep "inet " | awk '{print $2}')"

