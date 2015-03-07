#!/bin/bash

# Copyright 2014-2015 dvds
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# define variables
DVD_VOLUME_LABEL="Mr_Benn"
DVD_RELEASE_DATE="26 Sep 2005"

# create temporary file for DVD bash functions
DVD_FUNCTIONS=$(mktemp)
if [ $? -ne 0 ]
then
    exit 1
fi

# get DVD bash functions
wget --quiet "https://raw.githubusercontent.com/dvds/scripts/master/dvd-functions" --output-document="$DVD_FUNCTIONS"
if [ $? -ne 0 ]
then
    rm --force "$DVD_FUNCTIONS"
    exit 1
fi

# import DVD bash functions
source "$DVD_FUNCTIONS"
if [ $? -ne 0 ]
then
    rm --force "$DVD_FUNCTIONS"
    exit 1
fi

# remove temporary file for DVD bash functions
rm --force "$DVD_FUNCTIONS"
if [ $? -ne 0 ]
then
    exit 1
fi

# get the name of the DVD from this script
DVD_NAME=$(get_script_name)
if [ $? -ne 0 ]
then
    exit 1
fi

# validate that the correct DVD is in the DVD drive
check_dvd_volume_label "$DVD_VOLUME_LABEL"
if [ $? -ne 0 ]
then
    exit 1
fi

# clone the dvd
DVD_IMAGE=$(clone_dvd "DVD images" "$DVD_NAME" "$DVD_RELEASE_DATE")
if [ $? -ne 0 ]
then
    exit 1
fi

# write out the attributes of the cloned dvd
get_file_info "$DVD_IMAGE"
if [ $? -ne 0 ]
then
    exit 1
fi

# rip the 1st feature title
DVD_TITLE=$(rip_dvd_title "DVD rips/$DVD_NAME" 3 1 "en" "The Red Knight" "$DVD_RELEASE_DATE" "$DVD_IMAGE" "01. The Red Knight" "$DVD_NAME")
if [ $? -ne 0 ]
then
    exit 1
fi

# write out the attributes of the ripped title
get_matroska_file_info "$DVD_TITLE"
if [ $? -ne 0 ]
then
    exit 1
fi

# rip the 2nd feature title
DVD_TITLE=$(rip_dvd_title "DVD rips/$DVD_NAME" 4 1 "en" "The Hunter" "$DVD_RELEASE_DATE" "$DVD_IMAGE" "02. The Hunter" "$DVD_NAME")
if [ $? -ne 0 ]
then
    exit 1
fi

# write out the attributes of the ripped title
get_matroska_file_info "$DVD_TITLE"
if [ $? -ne 0 ]
then
    exit 1
fi

# rip the 3rd feature title
DVD_TITLE=$(rip_dvd_title "DVD rips/$DVD_NAME" 5 1 "en" "The Cook" "$DVD_RELEASE_DATE" "$DVD_IMAGE" "03. The Cook" "$DVD_NAME")
if [ $? -ne 0 ]
then
    exit 1
fi

# write out the attributes of the ripped title
get_matroska_file_info "$DVD_TITLE"
if [ $? -ne 0 ]
then
    exit 1
fi

# rip the 4th feature title
DVD_TITLE=$(rip_dvd_title "DVD rips/$DVD_NAME" 6 1 "en" "The Caveman" "$DVD_RELEASE_DATE" "$DVD_IMAGE" "04. The Caveman" "$DVD_NAME")
if [ $? -ne 0 ]
then
    exit 1
fi

# write out the attributes of the ripped title
get_matroska_file_info "$DVD_TITLE"
if [ $? -ne 0 ]
then
    exit 1
fi

# rip the 5th feature title
DVD_TITLE=$(rip_dvd_title "DVD rips/$DVD_NAME" 7 1 "en" "The Balloonist" "$DVD_RELEASE_DATE" "$DVD_IMAGE" "05. The Balloonist" "$DVD_NAME")
if [ $? -ne 0 ]
then
    exit 1
fi

# write out the attributes of the ripped title
get_matroska_file_info "$DVD_TITLE"
if [ $? -ne 0 ]
then
    exit 1
fi

# rip the 6th feature title
DVD_TITLE=$(rip_dvd_title "DVD rips/$DVD_NAME" 8 1 "en" "The Zoo Keeper" "$DVD_RELEASE_DATE" "$DVD_IMAGE" "06. The Zoo Keeper" "$DVD_NAME")
if [ $? -ne 0 ]
then
    exit 1
fi

# write out the attributes of the ripped title
get_matroska_file_info "$DVD_TITLE"
if [ $? -ne 0 ]
then
    exit 1
fi

# rip the 7th feature title
DVD_TITLE=$(rip_dvd_title "DVD rips/$DVD_NAME" 9 1 "en" "The Diver" "$DVD_RELEASE_DATE" "$DVD_IMAGE" "07. The Diver" "$DVD_NAME")
if [ $? -ne 0 ]
then
    exit 1
fi

# write out the attributes of the ripped title
get_matroska_file_info "$DVD_TITLE"
if [ $? -ne 0 ]
then
    exit 1
fi

# rip the 8th feature title
DVD_TITLE=$(rip_dvd_title "DVD rips/$DVD_NAME" 10 1 "en" "The Wizard" "$DVD_RELEASE_DATE" "$DVD_IMAGE" "08. The Wizard" "$DVD_NAME")
if [ $? -ne 0 ]
then
    exit 1
fi

# write out the attributes of the ripped title
get_matroska_file_info "$DVD_TITLE"
if [ $? -ne 0 ]
then
    exit 1
fi

# rip the 9th feature title
DVD_TITLE=$(rip_dvd_title "DVD rips/$DVD_NAME" 11 1 "en" "The Cowboy" "$DVD_RELEASE_DATE" "$DVD_IMAGE" "09. The Cowboy" "$DVD_NAME")
if [ $? -ne 0 ]
then
    exit 1
fi

# write out the attributes of the ripped title
get_matroska_file_info "$DVD_TITLE"
if [ $? -ne 0 ]
then
    exit 1
fi

# rip the 10th feature title
DVD_TITLE=$(rip_dvd_title "DVD rips/$DVD_NAME" 12 1 "en" "The Clown" "$DVD_RELEASE_DATE" "$DVD_IMAGE" "10. The Clown" "$DVD_NAME")
if [ $? -ne 0 ]
then
    exit 1
fi

# write out the attributes of the ripped title
get_matroska_file_info "$DVD_TITLE"
if [ $? -ne 0 ]
then
    exit 1
fi

# rip the 11th feature title
DVD_TITLE=$(rip_dvd_title "DVD rips/$DVD_NAME" 13 1 "en" "The Magic Carpet" "$DVD_RELEASE_DATE" "$DVD_IMAGE" "11. The Magic Carpet" "$DVD_NAME")
if [ $? -ne 0 ]
then
    exit 1
fi

# write out the attributes of the ripped title
get_matroska_file_info "$DVD_TITLE"
if [ $? -ne 0 ]
then
    exit 1
fi

# rip the 12th feature title
DVD_TITLE=$(rip_dvd_title "DVD rips/$DVD_NAME" 14 1 "en" "The Spaceman" "$DVD_RELEASE_DATE" "$DVD_IMAGE" "12. The Spaceman" "$DVD_NAME")
if [ $? -ne 0 ]
then
    exit 1
fi

# write out the attributes of the ripped title
get_matroska_file_info "$DVD_TITLE"
if [ $? -ne 0 ]
then
    exit 1
fi

# rip the 13th feature title
DVD_TITLE=$(rip_dvd_title "DVD rips/$DVD_NAME" 15 1 "en" "The Pirate" "$DVD_RELEASE_DATE" "$DVD_IMAGE" "13. The Pirate" "$DVD_NAME")
if [ $? -ne 0 ]
then
    exit 1
fi

# write out the attributes of the ripped title
get_matroska_file_info "$DVD_TITLE"
if [ $? -ne 0 ]
then
    exit 1
fi

# rip the 14th feature title
DVD_TITLE=$(rip_dvd_title "DVD rips/$DVD_NAME" 16 1 "en" "The Gladiator" "$DVD_RELEASE_DATE" "$DVD_IMAGE" "14. The Gladiator" "$DVD_NAME")
if [ $? -ne 0 ]
then
    exit 1
fi

# write out the attributes of the ripped title
get_matroska_file_info "$DVD_TITLE"
if [ $? -ne 0 ]
then
    exit 1
fi

# make DVD rips directory readonly
chmod 0555 "DVD rips/$DVD_NAME"
if [ $? -ne 0 ]
then
    exit 1
fi

# all ok
exit 0
