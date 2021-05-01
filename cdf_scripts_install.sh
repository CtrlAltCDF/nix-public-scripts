#!/bin/bash
echo PATH="$(echo \$PATH):$(echo \$HOME)/.scripts" >> ~/.bashrc
source ~/.bashrc