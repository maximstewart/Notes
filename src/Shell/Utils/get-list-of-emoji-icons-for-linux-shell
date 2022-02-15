# !/bin/bash
# #####################################################################
# Copyright (C) 2019  Kris Occhipinti
# https://filmsbykris.com
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, o
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
# #####################################################################

output="$HOME/.files/emojis.lst"

function main() {
    if [ "$1" = "update" ]; then
        getlist
    elif [ "$1" = "menu" ]; then
        menu
    else
        xfce4-terminal -e 'bash -c "/usr/local/bin/emojis menu"'
    fi
}

function menu(){
    # Give fzf list of all unicode characters to copy.
    # Shows the selected character in dunst if running.

    fzf="$HOME/.fzf/bin/fzf"
    #e="$(grep -v "#" "$output" | dmenu -i -l 20 -fn Monospace-18 | awk '{print $1}' | tr -d '\n'|fzf)"
    #e="$(grep -v "#" "$output" |awk '{for (i=2; i<NF; i++) printf $i " "; print $NF}'  |dmenu -i -l 20 -fn Monospace-18)"
    e="$(grep -v "#" "$output" |$fzf|awk '{print $1}')"
    #e="$(grep " $e\$" "$output" | awk '{print $1}' | tr -d '\n')"
    echo "$e" | xclip -selection clipboard
    echo "$e" | xclip

    pgrep -x dunst >/dev/null && notify-send "$e copied to clipboard."
}

function getlist() {
    mkdir -p "$HOME/.files"
    wget -qO- "https://en.wikipedia.org/wiki/Emoji"|\
    tr "\n" " "|\
    sed 's/<td/\n/g'|\
    grep "U+"|\
    grep "^ title"|while read l
    do
        t="$(echo "$l"|cut -d\: -f2|cut -d\" -f1)"
        e="$(echo "$l"|sed 's/title="/|/g'|cut -d\| -f3|cut -d\" -f1)"
        if [ "$e" != " " ]
        then
            echo "$e$t"
        fi
    done|tee "$output"

    echo "emoji list has been saved to $output"
}

main $*
