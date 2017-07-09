#!/bin/bash

## hyphop ##

. ./,config 

#trys="1 2 3"

[ "$trys" ] || trys=1

echo "[i] trys: $trys"

for n in $trys; do
	echo "[i] try $n"
    make -C $src $make_args $@ && exit 0
    [ "$n" = "$trys" ] || {
	echo "[w] last make return some error / try again $n from $trys"
	sleep 1
    }
done

