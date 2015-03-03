#!/bin/bash

# Copyright 2014 dvds
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
DVD_VOLUME_LABEL="MAGIC_KEY_DISC_1"
DVD_RELEASE_DATE="11 Sep 2006"

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

# set variable to hold the coverart name
DVD_COVERART_NAME="The Magic Key - The Complete Collection"

# rip the 1st feature title
DVD_TITLE=$(rip_dvd_title "DVD rips/$DVD_NAME" 30 1 "en" "H.M.S. Sweet Tooth" "$DVD_RELEASE_DATE" "$DVD_IMAGE" "01. H.M.S. Sweet Tooth" "$DVD_COVERART_NAME")
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
DVD_TITLE=$(rip_dvd_title "DVD rips/$DVD_NAME" 32 1 "en" "Lug and the Giant Storks" "$DVD_RELEASE_DATE" "$DVD_IMAGE" "02. Lug and the Giant Storks" "$DVD_COVERART_NAME")
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
DVD_TITLE=$(rip_dvd_title "DVD rips/$DVD_NAME" 34 1 "en" "The Rook King" "$DVD_RELEASE_DATE" "$DVD_IMAGE" "03. The Rook King" "$DVD_COVERART_NAME")
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
DVD_TITLE=$(rip_dvd_title "DVD rips/$DVD_NAME" 36 1 "en" "Clutterland Band" "$DVD_RELEASE_DATE" "$DVD_IMAGE" "04. Clutterland Band" "$DVD_COVERART_NAME")
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
DVD_TITLE=$(rip_dvd_title "DVD rips/$DVD_NAME" 38 1 "en" "Troll Talk" "$DVD_RELEASE_DATE" "$DVD_IMAGE" "05. Troll Talk" "$DVD_COVERART_NAME")
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
DVD_TITLE=$(rip_dvd_title "DVD rips/$DVD_NAME" 40 1 "en" "The Patchworker" "$DVD_RELEASE_DATE" "$DVD_IMAGE" "06. The Patchworker" "$DVD_COVERART_NAME")
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
DVD_TITLE=$(rip_dvd_title "DVD rips/$DVD_NAME" 42 1 "en" "Code Calling" "$DVD_RELEASE_DATE" "$DVD_IMAGE" "07. Code Calling" "$DVD_COVERART_NAME")
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
DVD_TITLE=$(rip_dvd_title "DVD rips/$DVD_NAME" 44 1 "en" "Zandoodle and the Wheezlebang" "$DVD_RELEASE_DATE" "$DVD_IMAGE" "08. Zandoodle and the Wheezlebang" "$DVD_COVERART_NAME")
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
DVD_TITLE=$(rip_dvd_title "DVD rips/$DVD_NAME" 46 1 "en" "Biff of the Jungle" "$DVD_RELEASE_DATE" "$DVD_IMAGE" "09. Biff of the Jungle" "$DVD_COVERART_NAME")
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
DVD_TITLE=$(rip_dvd_title "DVD rips/$DVD_NAME" 48 1 "en" "Nadim's Machine" "$DVD_RELEASE_DATE" "$DVD_IMAGE" "10. Nadim's Machine" "$DVD_COVERART_NAME")
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
DVD_TITLE=$(rip_dvd_title "DVD rips/$DVD_NAME" 50 1 "en" "The Flying Circus" "$DVD_RELEASE_DATE" "$DVD_IMAGE" "11. The Flying Circus" "$DVD_COVERART_NAME")
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
DVD_TITLE=$(rip_dvd_title "DVD rips/$DVD_NAME" 52 1 "en" "Fraser the Eraser" "$DVD_RELEASE_DATE" "$DVD_IMAGE" "12. Fraser the Eraser" "$DVD_COVERART_NAME")
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
DVD_TITLE=$(rip_dvd_title "DVD rips/$DVD_NAME" 54 1 "en" "The Anneena Academy" "$DVD_RELEASE_DATE" "$DVD_IMAGE" "13. The Anneena Academy" "$DVD_COVERART_NAME")
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
