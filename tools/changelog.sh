#!/bin/sh
#
# Copyright (C) 2020 CesuimOS Team
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
# along with this program.  If not, see <http://www.gnu.org/licenses
#

#  VARIABLES
CHANGELOG=Changelog.txt

# SCRIPT START
[ -f $CHANGELOG ] && rm -f $CHANGELOG

touch $CHANGELOG

echo "Generating changelog..."

for i in $(seq 14);
do
        b=$(expr $i - 1)
        DATE=`date --date="$i days ago" +%Y/%m/%d`
        UDATE=`date --date="$b days ago" +%Y/%m/%d`

        echo "=======================" >> $CHANGELOG
        echo "      "$DATE       >> $CHANGELOG
        echo "=======================" >> $CHANGELOG

        # Cycle through every repo to find commits since $i days ago
        repo forall -pc "git log --after=$DATE --until=$UDATE --pretty=format:\"change: %h by %an: %s\"" >> $CHANGELOG
		
        # New line
        echo "" >> $CHANGELOG
done

# Trim project in $CHANGELOG
sed -i 's/project //g' $CHANGELOG

# Ship to $OUT
cp -r $CHANGELOG $OUT/system/etc/
cp -r $CHANGELOG $OUT/

# Remove $CHANGELOG
rm -rf $CHANGELOG
