#!/bin/bash
case $2 in
	x) 
		echo $(($1 * $3))
		;;	
	+) 
		echo $(($1 + $3))
		;;
	-) 
		echo $(($1 - $3))
		;;
	÷) 
		echo $(($1 / $3))
		;;
	*) 
		echo "Renseignez un opérateur valide"
		;;
esac
