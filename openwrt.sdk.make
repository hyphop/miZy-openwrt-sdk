#!/bin/bash

## hyphop ##

. ./,config 

make -C $src $make_args $@ \ 
    || make -C $src $make_args $@ 

