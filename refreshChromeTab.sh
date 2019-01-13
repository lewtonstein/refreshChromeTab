#!/usr/bin/env bash
if [[ $# -gt 0 && -f $1 ]]
then
  if [[ ${1:0:1} == '/' ]]
  then
    file=$1
  else
    file=$(ls $(pwd)/$1)
  fi
  osascript <<EOF
tell application "Google Chrome"
	activate
	repeat with w in its windows
		set j to 0
		repeat with t in (tabs of w)
			set j to j + 1
			if URL of t contains "$file" then
				set (active tab index of w) to j
				set index of w to 1
				tell application "System Events"
					keystroke "r" using {command down, shift down}
				end tell
				return
			end if
		end repeat
	end repeat
	open location "file://$file"
end tell
EOF
else
  echo "ERROR: please input a file" >&2
fi
