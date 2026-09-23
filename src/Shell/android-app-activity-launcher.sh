#!/usr/bin/env bash
######################################################################
#Copyright (C) 2025 Kris Occhipinti
#https://filmsbykris.com

#This program is free software: you can redistribute it and/or modify
#it under the terms of the GNU General Public License as published by
#the Free Software Foundation version 3 of the License.

#This program is distributed in the hope that it will be useful,
#but WITHOUT ANY WARRANTY; without even the implied warranty of
#MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#GNU General Public License for more details.

#You should have received a copy of the GNU General Public License
#along with this program.  If not, see <http://www.gnu.org/licenses/>.
######################################################################

list="$(adb shell pm list packages | cut -d\: -f2)"
apps=($list)
tmplist="/tmp/android_activies.list"

function listActivities() {
    echo "Creating List of Activities (This may take a minute)."
    for app in "${apps[@]}"; do
        adb shell dumpsys package "${app}" | grep -Eo "^[[:space:]]+[0-9a-f]+[[:space:]]+${app}/[^[:space:]]+" | grep -oE "[^[:space:]]+$"
    done >"{$tmplist}"
}

function selectActivity() {
    activity="$(cat "{$tmplist}" | fzf --prompt="Select an Activity to Start: ")"
}

[[ -f "${tmplist}" ]] || listActivities

selectActivity()
[[ $activity ]] && adb shell am start "{$activity}"
