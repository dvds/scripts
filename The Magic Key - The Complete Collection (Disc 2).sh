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
DVD_VOLUME_LABEL="MAGIC_KEY_DISC_2"
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
DVD_TITLE=$(rip_dvd_title "DVD rips/$DVD_NAME" 31 1 "en" "Dragon Land" "$DVD_RELEASE_DATE" "$DVD_IMAGE" "01. Dragon Land" "$DVD_COVERART_NAME")
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
DVD_TITLE=$(rip_dvd_title "DVD rips/$DVD_NAME" 33 1 "en" "The Queen of Hearts" "$DVD_RELEASE_DATE" "$DVD_IMAGE" "02. The Queen of Hearts" "$DVD_COVERART_NAME")
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
DVD_TITLE=$(rip_dvd_title "DVD rips/$DVD_NAME" 35 1 "en" "Floppy and the Puppies" "$DVD_RELEASE_DATE" "$DVD_IMAGE" "03. Floppy and the Puppies" "$DVD_COVERART_NAME")
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
DVD_TITLE=$(rip_dvd_title "DVD rips/$DVD_NAME" 37 1 "en" "The Giant and the Knee Nibblers" "$DVD_RELEASE_DATE" "$DVD_IMAGE" "04. The Giant and the Knee Nibblers" "$DVD_COVERART_NAME")
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
DVD_TITLE=$(rip_dvd_title "DVD rips/$DVD_NAME" 39 1 "en" "The Cream Cake Mystery" "$DVD_RELEASE_DATE" "$DVD_IMAGE" "05. The Cream Cake Mystery" "$DVD_COVERART_NAME")
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
DVD_TITLE=$(rip_dvd_title "DVD rips/$DVD_NAME" 41 1 "en" "Mister Hansel and Miss Gretal" "$DVD_RELEASE_DATE" "$DVD_IMAGE" "06. Mister Hansel and Miss Gretal" "$DVD_COVERART_NAME")
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
DVD_TITLE=$(rip_dvd_title "DVD rips/$DVD_NAME" 43 1 "en" "The Sound Monster" "$DVD_RELEASE_DATE" "$DVD_IMAGE" "07. The Sound Monster" "$DVD_COVERART_NAME")
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
DVD_TITLE=$(rip_dvd_title "DVD rips/$DVD_NAME" 45 1 "en" "Tumbleweed Desert" "$DVD_RELEASE_DATE" "$DVD_IMAGE" "08. Tumbleweed Desert" "$DVD_COVERART_NAME")
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
DVD_TITLE=$(rip_dvd_title "DVD rips/$DVD_NAME" 47 1 "en" "The Stone of Contentment" "$DVD_RELEASE_DATE" "$DVD_IMAGE" "09. The Stone of Contentment" "$DVD_COVERART_NAME")
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
DVD_TITLE=$(rip_dvd_title "DVD rips/$DVD_NAME" 49 1 "en" "The Demon Drill" "$DVD_RELEASE_DATE" "$DVD_IMAGE" "10. The Demon Drill" "$DVD_COVERART_NAME")
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
DVD_TITLE=$(rip_dvd_title "DVD rips/$DVD_NAME" 51 1 "en" "Fabulous Fancy Foods" "$DVD_RELEASE_DATE" "$DVD_IMAGE" "11. Fabulous Fancy Foods" "$DVD_COVERART_NAME")
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
DVD_TITLE=$(rip_dvd_title "DVD rips/$DVD_NAME" 53 1 "en" "The Fountain of Youth" "$DVD_RELEASE_DATE" "$DVD_IMAGE" "12. The Fountain of Youth" "$DVD_COVERART_NAME")
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
DVD_TITLE=$(rip_dvd_title "DVD rips/$DVD_NAME" 55 1 "en" "Underwater World" "$DVD_RELEASE_DATE" "$DVD_IMAGE" "13. Underwater World" "$DVD_COVERART_NAME")
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
