#!/bin/bash
echo "🤞 STARTING JOB"
find $HOME/.ssh/ -name *.pub* -exec os_chmod_400.sh {} + &&
echo "🤞 JOB COMPLETE"
