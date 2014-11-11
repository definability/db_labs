#!/bin/bash
if [[ -z "$1" ]]; then
    echo "Type the commit comment!" &1>2
    exit 1
fi
git pull
git add execute.sh clear.sql lab*/*.sql
git add pull.sh
git commit -m "$1"
git push https://char-lie@github.com/char-lie/db_labs
