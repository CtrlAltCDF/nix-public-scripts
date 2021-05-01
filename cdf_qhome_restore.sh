#!/bin/bash
echo "🤞 STARTING RESTORE"
dt=$(date '+%d/%m/%Y %H:%M:%S')
(
    cd $HOME/.qhome
    gpg -d ./source.tgz.gpg | tar xz &&
    (
        cd ./source
        cp -vrT . $HOME &&
        echo PATH="$(echo \$PATH):$(echo \$HOME)/.qscripts" >> ~/.bashrc &&
        source ~/.bashrc &&
        echo "✅ RESTORE COMPLETE"
    )
)
