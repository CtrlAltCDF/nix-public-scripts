#!/bin/bash
echo "🤞 STARTING BACKUP"
dt=$(date '+%d/%m/%Y %H:%M:%S')
(
    cd $HOME/.qhome/
    export GPG_TTY=$(tty)
    tar -cz ./source/ | gpg -c -o source.tgz.gpg &&
    git branch -M main &&
    git remote remove origin &&
    git remote add origin git@callum.github.com:flossflamingo/nix-qhome.git &&
    git add . &&
    git commit -m "backup $dt" &&
    git push -u origin main &&
    echo "✅ BACKUP COMPLETE"
)
