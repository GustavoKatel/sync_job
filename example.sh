#!/bin/bash

source sync_job.sh

mutex="/tmp/teste.lock"

sync_lock $mutex

sync_cmd $mutex date &
sync_cmd $mutex date &
sync_cmd $mutex date &
sync_cmd $mutex date &
sync_cmd $mutex date &
sync_cmd $mutex date &

sleep 3

sync_unlock $mutex
