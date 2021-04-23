#!/bin/bash
echo "🤞 STARTING UPDATE"
(
    cd $HOME/.scripts/
    git pull &&
    echo "✅ UDPATE COMPLETE"
)
