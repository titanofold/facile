#!/usr/bin/env bash
export DATABASE_URL='postgresql://facileapp@/facile';

if [[ "$1" == "morbo" ]] ; then
    morbo facile
else
    ./facile $@
fi
