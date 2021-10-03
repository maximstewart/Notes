# !/bin/bash
# #####################################################################
# Copyright (C) 2018  Kris Occhipinti
# https://filmsbykris.com
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
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

domain="https://www.1001freefonts.com"
pagenum="100"

for i in `seq 1 $pagenum`;
    do
        wget -q "$domain/new-fonts-$i.php" -O-|\
        grep DOWNLOAD|\
        cut -d\' -f2|\
        sort -u|while read u;
    do
        wget -c "$domain$u"
    done
done

#unzip files
for z in *.zip;
do
  unzip -o "$z";
done

#move fonts to fonts folder
mkdir -p $HOME/.local/share/fonts
find -iname "*.ttf" -o -iname "*.otf"|while read f
do
  mv "$f" $HOME/.local/share/fonts
done

#update fonts to system
fc-cache -f -v
