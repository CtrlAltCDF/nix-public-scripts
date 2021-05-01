#!/bin/bash
echo "🤞 STARTING JOB"
(
    chmod +x -Rv $HOME/.scripts/*.sh &&
    chmod +x -Rv $HOME/.qscripts/*.sh ||
    echo "✅ JOB COMPLETE"
)