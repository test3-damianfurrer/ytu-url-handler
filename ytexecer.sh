#!/bin/sh
#type 		-> $1
#action		-> $2
#id/urlpart	-> $3
ypath="/home/damian/project-pipe/"
cd "$ypath"

case "$1" in
"v")
  case "$2" in
  "v")
    source sh/prcvideo.src
    prcvideo "${3}" "view+"
  ;;
  "vv")
    source sh/prcvideo.src
    prcvideo "${3}" "view+{;}view{;}next"
  ;;
  "vvk")
    source sh/prcvideo.src
    prcvideo "${3}" "view+{;}view"
  ;;
  *)
    source sh/prcvideo.src
    prcvideo "${3}"
  ;;
 esac
;;
"a")
  case "$2" in
  "l")
    source sh/prcvideo.src
    prcvideo "${3}" "view+{;}listen-gui{;}126 kbps{x}132459{x}M4A{;}next"
  ;;
  "lk")
    source sh/prcvideo.src
    prcvideo "${3}" "view+{;}listen-gui{;}126 kbps{x}132459{x}M4A"
  ;;
  *)
    source sh/prcvideo.src
    prcvideo "${3}" "view+{;}listen-gui"
  ;;
  esac
;;
"p")
  case "$2" in
  "v")
    st -e ./playviewall.sh "playlists/byid/${3}";;
  "l")
    st -e ./playlistenall.sh "playlists/byid/${3}";;
  *)
    source sh/prcplaylist.src
    prcplaylist "${3}"
  ;;
  esac
;;
"c")
  case "$2" in
  "v")
    st -e ./playviewall.sh "channel_ids/${3}";;
  "l")
    st -e ./playlistenall.sh "channel_ids/${3}";;
  *)
    source sh/prcchannel.src
    prcchannel "${3}"
  ;;
  esac
;;
esac
