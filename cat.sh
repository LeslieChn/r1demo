#! /bin/bash

usage(){
cat << EE
	Usage: 
}

while getopts ":hlp" o; do
	case "$o" in
		h)$hflag=1;;
		l)$lflag=1;;
		p)$pflag=1;;
		?)
			printf "Error: Unknown option '-%s'.\n" "$OPTARG" >&2
			usage
			exit 1;
	esac
done
