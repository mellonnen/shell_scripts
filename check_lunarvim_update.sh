#!/bin/sh

# Checks if the LunarVim config has updates
check_lunarvim_update () {
  tput civis
  git -C ~/.local/share/lunarvim/lvim fetch 2> /dev/null & #run fetch in background 

  PID=$! #Get process ID

  # Lunar spinner!
  spin="🌑🌒🌓🌔🌕🌖🌗🌘"
  i=0
  while kill -0 $PID 2> /dev/null;
  do
    i=$(( (i+1) %8 ))
    printf "\rChecking for LunarVim updates ${spin:$i:1}"
    sleep .05
  done

  STATUS=$(git -C ~/.local/share/lunarvim/lvim status)
  MESSAGE=$(echo "$STATUS" | awk 'FNR==2{ print }')

  # check if you are behind latest commit
  if [[ $MESSAGE =~ "behind" ]]; then
    printf "\rUpdates for LunarVim available! "
  else
    printf "\rNo LunarVim updates are available."
  fi
  tput cnorm
}
