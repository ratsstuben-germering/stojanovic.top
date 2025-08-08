#!/bin/bash

git add ../.
git commit -m "$(uname -a | awk '{printf "%s %s ", $2, $3}' && date | tr -d '\n')" 
git push origin main
