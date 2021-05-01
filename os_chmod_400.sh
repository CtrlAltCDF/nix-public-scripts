#!/bin/bash
for var in "$@"
do
    sudo chmod 400 -c ${var::-4}
done