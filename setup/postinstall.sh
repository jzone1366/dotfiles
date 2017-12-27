#/usr/bin/env bash

# Will run all scripts in postinstall directory
function do_postinstall() {
  if [[ ! "$(type -P git)" ]]; then
    "${RED}I require GIT to be installed. Please install git and try again."
    return
  fi
  
  local files=(${DOTFILES}/postinstall/*)

  if (( ${#files[@]} == 0 )); then
    echo "${RED} No Files Found.${NC}"
    return
  fi

  # Iterate over the files and source them
  for file in "${files[@]}"; do
    echo "${PURPLE} sourcing ${file} ${NC}"
    source ${file}
  done

}

do_postinstall
