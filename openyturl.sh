#!/bin/sh
ytu=$(echo "${1}" | sed 's/ytu:\/\///')
type=$(echo "${ytu}" | awk '{print $1}' FS='/')
action=$(echo "${ytu}" | awk '{print $2}' FS='/')
ytu=$(echo "${ytu}" | awk '{print $2}' FS="/${action}/")
#needs to be "subdomain", authority is always lower case

{path}/ytexecer.sh "${type}" "${action}" "${ytu}" &
exit 0
