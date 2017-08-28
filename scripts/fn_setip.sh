#!/bin/bash

function setip() {

	# SET IP Adress binded on wlp2s0
	MYIP=$(ifconfig wlp2s0 | grep "inet " | awk '{print $2}')
	export MYIP
}
