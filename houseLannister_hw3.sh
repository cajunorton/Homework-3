#!/bin/bash - 
#===============================================================================
#
#          FILE: houseLanniser_hw3.sh
# 
#         USAGE: ./houseLanniser_hw3.sh 
# 
#   DESCRIPTION: Script takes AWK and SED input
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Eli Orton (), eliorton@mail.weber.edu
#  ORGANIZATION: 
#       CREATED: 02/12/2017 21:00
#      REVISION:  ---
#===============================================================================

#set -o nounset                              # Treat unset variables as an error

sedFile="houseLannister.hw3.sed"
awkFile="houseLannister.hw3.awk"
inputFile=$7

# Help Function
usage()
{
	echo "Usage: ./ hw3.sh -s sedsrc -a awksrc -i inputFile"
}

if [[ $1 == "--help" ]]
then
	usage
fi

# Check for 3 arguments
while getopts ":s:a:i:" opt
do
	case $opt in
		s) s=$OPTARG
			;;
		a) a=$OPTARG
			;;
		i) i=$OPTARG
			;;
		\?) usage
			;;
	esac
done
if [[ -z $s ]]
then
	echo "Missing argument"
	usage
	exit 1
fi

if [[ -z $a ]]
then
	echo "Missing argument"
	usage
	exit 1
fi

if [[ -z $i ]]
then
	echo "Missing argument"
	usage
	exit 1
fi

# SED Call
$inputFile |
sed -f $sedFile |
# AWK Call
awk -f $awkFile > 20thCenturyPresidents.txt

echo "Your output file will be saved in 20thCenturyPresidents.txt"





exit 0
