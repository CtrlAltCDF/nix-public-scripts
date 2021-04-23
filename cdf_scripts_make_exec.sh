#!/bin/bash
echo "🤞 STARTING JOB"
(
    chmod +x -Rv $HOME/.scripts/*.sh &&
    echo "✅ JOB COMPLETE"
)