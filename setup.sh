#/usr/bin/env bash

usage="$(basename "$0") [-l] [-h] [-p] -- script to install dotfiles

where:
  -l  just symlink all folders in /link
  -h  show this help text
  -p  postinstall will run after everything else is done"

#arg options
DO_LINK=0;  # Run do_link
DO_POST=0;  # Run do_init

#parse the options
while getopts lhp OPT ; do
  case $OPT in
    l) DO_LINK=1;;
    p) DO_POST=1;;
    h)
      echo "${usage}"
      exit 1
      ;;
    \?) printf "Illegal options: -%s\n" "$OPTARG" >&2
      echo "$usage" >&2
      exit 1
      ;;
  esac
done

#color codes
RED='\033[0;31m';
GREEN='\033[0;32m';
ORANGE='\033[0;33m';
BLUE='\033[0;34m';
PURPLE='\033[0;35m';
CYAN='\033[0;36m';
YELLOW='\033[1;33m';
WHITE='\033[1;37m';
NC='\033[0';

export DOTFILES=$HOME/.dotfiles

echo "${CYAN} A whole new world..... (Installing DotFiles)${NC}"

if [ ${DO_LINK} -eq 1 ]; then
  source ${DOTFILES}/setup/link.sh
fi

if [ ${DO_POST} -eq 1 ]; then
  source ${DOTFILES}/setup/postinstall.sh
fi

echo "${GREEN} DONE! Reload this thing to get it to work.${NC}"
