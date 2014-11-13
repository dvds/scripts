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
DVD_VOLUME_LABEL=$(printf "Curious George A Halloween Boo\x00\x1f")
DVD_RELEASE_DATE="13 Oct 2014"

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
DVD_ISO=$(clone_dvd "DVD isos" "$DVD_NAME" "$DVD_RELEASE_DATE")
if [ $? -ne 0 ]
then
    exit 1
fi

# write out the attributes of the cloned dvd
get_file_info "$DVD_ISO"
if [ $? -ne 0 ]
then
    exit 1
fi

# rip the feature
DVD_TITLE=$(rip_dvd_title "DVDs/$DVD_NAME" 1 1 "en" "$DVD_NAME" "$DVD_RELEASE_DATE" "$DVD_ISO")
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

# all ok
exit 0