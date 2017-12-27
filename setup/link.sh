#!/usr/bin/env bash

# Symlink all the files in the link directory to the HOME directory and append .
function do_link() {
  local base dest
  local files=($DOTFILES/link/*)

  if (( ${#files[@]} == 0 )); then 
    echo "${RED} No Files Found.${NC}"
    return
  fi

  # Iterate over these files
  for file in "${files[@]}"; do
    base="$(basename $file)"
    dest="$HOME/.$base"

    echo "${PURPLE} Linking ${base} to ${dest}${NC}"
    ln -sf ${file} ${dest} 
  done

}

do_link
