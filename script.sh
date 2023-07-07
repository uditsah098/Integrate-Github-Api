#!/bin/bash
#######################################################################
# Author: udit sah						      #	
# Version: V1                           			      #
# Script used to helps to give the repos, users and many more         # 
#                                                                     #
#######################################################################
 

if [ "$#" -ne 2 ];then 
	echo " usage $0 [github-apikey] [command(user/repos)]"
	exit 1
fi

pass=$1
apireq=$2

header="Authorization: token $pass"

output=$(curl -s -H "$header" https://api.github.com/{$apireq})

echo "$output"
