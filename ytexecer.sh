#!/bin/sh
#type=$(echo "${ytu}" | awk '{print $1}' FS='_')		-> $1
#action=$(echo "${ytu}" | awk '{print $2}' FS='_')		-> $2
#ytu=$(echo "${ytu}" | awk '{print $2}' FS="_${action}_")	-> $3

case "$1" in
"v")
  case "$2" in
#  "p")
  "v")
    cd ~/project-pipe/
    source sh/prcvideo.src
    prcvideo "${3}" "view+"
  ;;
  "vv")
    cd ~/project-pipe/
    source sh/prcvideo.src
    prcvideo "${3}" "view+{;}view"
  ;;
  *)
    cd ~/project-pipe/
    source sh/prcvideo.src
    prcvideo "${3}"
  ;;
 esac
;;
"a")
  case "$2" in
  "l")
    cd ~/project-pipe/
    source sh/prcvideo.src
    prcvideo "${3}" "view+{;}listen-gui{;}126 kbps{x}132459{x}M4A{;}next"
  ;;
  "lk")
    cd ~/project-pipe/
    source sh/prcvideo.src
    prcvideo "${3}" "view+{;}listen-gui{;}126 kbps{x}132459{x}M4A"
  ;;
  *)
    cd ~/project-pipe/
    source sh/prcvideo.src
    prcvideo "${3}" "view+{;}listen"
  ;;
  esac
;;
"p")
;;
"c")
;;
esac
