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
DVD_VOLUME_LABEL="Demand DVD"
DVD_RELEASE_DATE="28 Oct 2013"

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
DVD_TITLE=$(rip_dvd_title "DVD rips/$DVD_NAME" 2 1 "en" "Towser and the Terrible Thing" "$DVD_RELEASE_DATE" "$DVD_IMAGE" "01. Towser and the Terrible Thing" "$DVD_NAME")
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
DVD_TITLE=$(rip_dvd_title "DVD rips/$DVD_NAME" 3 1 "en" "Towser and Sadie's Birthday" "$DVD_RELEASE_DATE" "$DVD_IMAGE" "02. Towser and Sadie's Birthday" "$DVD_NAME")
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
DVD_TITLE=$(rip_dvd_title "DVD rips/$DVD_NAME" 4 1 "en" "Towser and the Lion" "$DVD_RELEASE_DATE" "$DVD_IMAGE" "03. Towser and the Lion" "$DVD_NAME")
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
DVD_TITLE=$(rip_dvd_title "DVD rips/$DVD_NAME" 5 1 "en" "Towser and the Water Rats" "$DVD_RELEASE_DATE" "$DVD_IMAGE" "04. Towser and the Water Rats" "$DVD_NAME")
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
DVD_TITLE=$(rip_dvd_title "DVD rips/$DVD_NAME" 6 1 "en" "Towser and the Smile Machine" "$DVD_RELEASE_DATE" "$DVD_IMAGE" "05. Towser and the Smile Machine" "$DVD_NAME")
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
DVD_TITLE=$(rip_dvd_title "DVD rips/$DVD_NAME" 7 1 "en" "Towser and Goblin Gobble" "$DVD_RELEASE_DATE" "$DVD_IMAGE" "06. Towser and Goblin Gobble" "$DVD_NAME")
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
DVD_TITLE=$(rip_dvd_title "DVD rips/$DVD_NAME" 8 1 "en" "Towser and the Magic Apple" "$DVD_RELEASE_DATE" "$DVD_IMAGE" "07. Towser and the Magic Apple" "$DVD_NAME")
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
DVD_TITLE=$(rip_dvd_title "DVD rips/$DVD_NAME" 9 1 "en" "Towser and the Nosey Parker" "$DVD_RELEASE_DATE" "$DVD_IMAGE" "08. Towser and the Nosey Parker" "$DVD_NAME")
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
DVD_TITLE=$(rip_dvd_title "DVD rips/$DVD_NAME" 10 1 "en" "Towser and Sadie's Robot" "$DVD_RELEASE_DATE" "$DVD_IMAGE" "09. Towser and Sadie's Robot" "$DVD_NAME")
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
DVD_TITLE=$(rip_dvd_title "DVD rips/$DVD_NAME" 11 1 "en" "Towser and the Holiday" "$DVD_RELEASE_DATE" "$DVD_IMAGE" "10. Towser and the Holiday" "$DVD_NAME")
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
DVD_TITLE=$(rip_dvd_title "DVD rips/$DVD_NAME" 12 1 "en" "Towser and the Alien Invader" "$DVD_RELEASE_DATE" "$DVD_IMAGE" "11. Towser and the Alien Invader" "$DVD_NAME")
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
DVD_TITLE=$(rip_dvd_title "DVD rips/$DVD_NAME" 13 1 "en" "Towser and the Funny Face" "$DVD_RELEASE_DATE" "$DVD_IMAGE" "12. Towser and the Funny Face" "$DVD_NAME")
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
DVD_TITLE=$(rip_dvd_title "DVD rips/$DVD_NAME" 14 1 "en" "Towser and the Secret" "$DVD_RELEASE_DATE" "$DVD_IMAGE" "13. Towser and the Secret" "$DVD_NAME")
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
DVD_TITLE=$(rip_dvd_title "DVD rips/$DVD_NAME" 15 1 "en" "Towser and the Wizard" "$DVD_RELEASE_DATE" "$DVD_IMAGE" "14. Towser and the Wizard" "$DVD_NAME")
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

# rip the 15th feature title
DVD_TITLE=$(rip_dvd_title "DVD rips/$DVD_NAME" 16 1 "en" "Towser and the Dinner Party" "$DVD_RELEASE_DATE" "$DVD_IMAGE" "15. Towser and the Dinner Party" "$DVD_NAME")
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

# rip the 16th feature title
DVD_TITLE=$(rip_dvd_title "DVD rips/$DVD_NAME" 17 1 "en" "Towser and the Dentist" "$DVD_RELEASE_DATE" "$DVD_IMAGE" "16. Towser and the Dentist" "$DVD_NAME")
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

# rip the 17th feature title
DVD_TITLE=$(rip_dvd_title "DVD rips/$DVD_NAME" 18 1 "en" "Towser and Uncle Bosco" "$DVD_RELEASE_DATE" "$DVD_IMAGE" "17. Towser and Uncle Bosco" "$DVD_NAME")
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

# rip the 18th feature title
DVD_TITLE=$(rip_dvd_title "DVD rips/$DVD_NAME" 19 1 "en" "Towser and the Snowman" "$DVD_RELEASE_DATE" "$DVD_IMAGE" "18. Towser and the Snowman" "$DVD_NAME")
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

# rip the 19th feature title
DVD_TITLE=$(rip_dvd_title "DVD rips/$DVD_NAME" 20 1 "en" "Towser and the Space Shot" "$DVD_RELEASE_DATE" "$DVD_IMAGE" "19. Towser and the Space Shot" "$DVD_NAME")
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

# rip the 20th feature title
DVD_TITLE=$(rip_dvd_title "DVD rips/$DVD_NAME" 21 1 "en" "Towser and the Flight" "$DVD_RELEASE_DATE" "$DVD_IMAGE" "20. Towser and the Flight" "$DVD_NAME")
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

# rip the 21th feature title
DVD_TITLE=$(rip_dvd_title "DVD rips/$DVD_NAME" 22 1 "en" "Towser and the Black Hole" "$DVD_RELEASE_DATE" "$DVD_IMAGE" "21. Towser and the Black Hole" "$DVD_NAME")
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

# rip the 22th feature title
DVD_TITLE=$(rip_dvd_title "DVD rips/$DVD_NAME" 23 1 "en" "Towser and the Haunted House" "$DVD_RELEASE_DATE" "$DVD_IMAGE" "22. Towser and the Haunted House" "$DVD_NAME")
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

# rip the 23th feature title
DVD_TITLE=$(rip_dvd_title "DVD rips/$DVD_NAME" 24 1 "en" "Towser and the Dragon" "$DVD_RELEASE_DATE" "$DVD_IMAGE" "23. Towser and the Dragon" "$DVD_NAME")
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

# rip the 24th feature title
DVD_TITLE=$(rip_dvd_title "DVD rips/$DVD_NAME" 25 1 "en" "Towser and the Black Knight" "$DVD_RELEASE_DATE" "$DVD_IMAGE" "24. Towser and the Black Knight" "$DVD_NAME")
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

# rip the 25th feature title
DVD_TITLE=$(rip_dvd_title "DVD rips/$DVD_NAME" 26 1 "en" "Towser and the Slight Accident" "$DVD_RELEASE_DATE" "$DVD_IMAGE" "25. Towser and the Slight Accident" "$DVD_NAME")
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

# rip the 26th feature title
DVD_TITLE=$(rip_dvd_title "DVD rips/$DVD_NAME" 27 1 "en" "Towser and the Conjuror" "$DVD_RELEASE_DATE" "$DVD_IMAGE" "26. Towser and the Conjuror" "$DVD_NAME")
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
