#!/bin/sh
ytu=$(echo "${1}" | sed 's/ytu:\/\///')
type=$(echo "${ytu}" | awk '{print $1}' FS='_')
action=$(echo "${ytu}" | awk '{print $2}' FS='_')
ytu=$(echo "${ytu}" | awk '{print $2}' FS="_${action}_")

{path}/ytexecer.sh "${type}" "${action}" "${ytu}" &
exit 0
