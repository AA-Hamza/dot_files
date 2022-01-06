#!/usr/bin/env bash
cwd="$( swaymsg -t get_tree |
  jq '.. | (.nodes? // empty)[] | select(.focused == true).pid? // empty' |
  xargs pstree -p | grep "\<tmux\>\|\<fish\>\|\<bash\>\|\<zsh\>\|\<sh\>" |
  grep -o '[0-9]*' | xargs pwdx 2> /dev/null | cut -f2- -d' ' |
  sort | tail -n 1 | tr -d '\n' )"

if [ -d "$cwd" ]; then
  alacritty --working-directory "$cwd" &
  disown
else
  alacritty &
  disown
fi
