#!/bin/bash
for var in "$@"
do
    sudo chmod -v 400 ${var::-4}
done