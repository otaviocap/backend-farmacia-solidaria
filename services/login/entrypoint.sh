#!/bin/bash

python createAndConfigure.py

(service-django runserver) &
(service-faust --datadir=worker1-data worker -l info --web-port=6066)