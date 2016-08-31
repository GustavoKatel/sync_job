#!/bin/bash

sync_cmd() {

	mutex=$1
	cmd=${@:2} # arguments tail. Everything but the first

	# listener
	while [ -e $mutex ]; do sleep 1; done &
	pid=$!

	wait $pid

	$cmd

}

sync_lock() {
	touch $1
}

sync_unlock() {
	rm $1
}


