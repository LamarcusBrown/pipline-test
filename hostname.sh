#!/bin/bash


export FIRST_NAME='marc'
export LAST_NAME='brown'
export EMAIL='marc.brown.com'

echo $FIRST_NAME > $HOST_NAME.txt

echo $LAST_NAME >> $HOST_NAME.txt

echo $EMAIL >> $HOST_NAME.txt

