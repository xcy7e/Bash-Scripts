#!/bin/bash

function getip() {

	# Echo current IP Adress binded on wlp2s0
	setip
	echo $MYIP

}
