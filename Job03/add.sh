#!/bin/bash
if ! [[ "$1" =~ ^[0-9]+$ ]] ; 
 then exec >&2; echo "error: First input is not a number"; exit 1
fi

if ! [[ "$2" =~ ^[0-9]+$ ]] ; 
 then exec >&2; echo "error: Second input is not a number"; exit 1
fi

result=$(($1 + $2))
echo $result
