#!/bin/bash
echo "🤞 STARTING BACKUP"
dt=$(date '+%d/%m/%Y %H:%M:%S')
cdf_scripts_make_exec.sh
(
    cd $HOME/.scripts/
    git branch -M main &&
    git remote remove origin &&
    git remote add origin git@callum.github.com:flossflamingo/public-scripts.git &&
    git pull origin main &&
    git add . &&
    git commit -m "backup $dt" &&
    git push -u origin main &&
    echo "✅ BACKUP COMPLETE"
)
