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
DVD_VOLUME_LABEL=$(printf "FUNTASTIC_CHILDRENS_FAVOURITES\x00\x1f")
DVD_RELEASE_DATE="25 Jul 2005"

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
DVD_TITLE=$(rip_dvd_title "DVD rips/$DVD_NAME" 5 1 "en" "Fireman Sam - Mummy's Little Helper" "$DVD_RELEASE_DATE" "$DVD_IMAGE" "1. Fireman Sam - Mummy's Little Helper" "$DVD_NAME")
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
DVD_TITLE=$(rip_dvd_title "DVD rips/$DVD_NAME" 6 1 "en" "Thomas & Friends - Thomas and the Tuba" "$DVD_RELEASE_DATE" "$DVD_IMAGE" "2. Thomas & Friends - Thomas and the Tuba" "$DVD_NAME")
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
DVD_TITLE=$(rip_dvd_title "DVD rips/$DVD_NAME" 7 1 "en" "Angelina Ballerina - Angelina in the Wings" "$DVD_RELEASE_DATE" "$DVD_IMAGE" "3. Angelina Ballerina - Angelina in the Wings" "$DVD_NAME")
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
DVD_TITLE=$(rip_dvd_title "DVD rips/$DVD_NAME" 8 1 "en" "Pingu - Pingu Finishes the Job" "$DVD_RELEASE_DATE" "$DVD_IMAGE" "4. Pingu - Pingu Finishes the Job" "$DVD_NAME")
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
DVD_TITLE=$(rip_dvd_title "DVD rips/$DVD_NAME" 9 1 "en" "Barney & Friends - Up, Down and Around!" "$DVD_RELEASE_DATE" "$DVD_IMAGE" "5. Barney & Friends - Up, Down and Around!" "$DVD_NAME")
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
DVD_TITLE=$(rip_dvd_title "DVD rips/$DVD_NAME" 10 1 "en" "Kipper - The River Trip" "$DVD_RELEASE_DATE" "$DVD_IMAGE" "6. Kipper - The River Trip" "$DVD_NAME")
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
DVD_TITLE=$(rip_dvd_title "DVD rips/$DVD_NAME" 11 1 "en" "Rubbadubbers - Terence the Spy" "$DVD_RELEASE_DATE" "$DVD_IMAGE" "7. Rubbadubbers - Terence the Spy" "$DVD_NAME")
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
DVD_TITLE=$(rip_dvd_title "DVD rips/$DVD_NAME" 12 1 "en" "The Wiggles - Dressing Up" "$DVD_RELEASE_DATE" "$DVD_IMAGE" "8. The Wiggles - Dressing Up" "$DVD_NAME")
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
DVD_TITLE=$(rip_dvd_title "DVD rips/$DVD_NAME" 13 1 "en" "Bob the Builder - Mr Beasley's Noisy Pipes" "$DVD_RELEASE_DATE" "$DVD_IMAGE" "9. Bob the Builder - Mr Beasley's Noisy Pipes" "$DVD_NAME")
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