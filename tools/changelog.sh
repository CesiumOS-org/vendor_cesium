#!/bin/sh
#
# Copyright (C) 2020 CesiumOS Team
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
Changelog=Changelog.txt

# SCRIPT START
[ -f $Changelog ] && rm -f $Changelog

export formatter_script=$(realpath vendor/aosp/tools/changelog_repo_formatter.sh)

touch $Changelog

echo "Generating changelog..."

for i in $(seq 14);
do
export After_Date=`date --date="$i days ago" +%Y/%m/%d`
k=$(expr $i - 1)
	export Until_Date=`date --date="$k days ago" +%Y/%m/%d`

	# Line with after --- until was too long for a small ListView
	echo '=======================' >> $Changelog;
	echo  "     "$Until_Date       >> $Changelog;
	echo '=======================' >> $Changelog;
	echo >> $Changelog;

	# Cycle through every repo to find commits between 2 dates
	repo forall -c '. $formatter_script' >> $Changelog
	echo >> $Changelog;
done

cp $Changelog $OUT/system/etc/
cp $Changelog $OUT/
