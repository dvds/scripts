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
DVD_VOLUME_LABEL="WIGGLES"
DVD_RELEASE_DATE="31 Jan 2005"

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

function rip_title_and_write_attributes() {

    # declare local variables
    local dvd_output_directory_path="$1"
    local dvd_title="$2"
    local dvd_angle="$3"
    local dvd_language="$4"
    local dvd_title_name="$5"
    local dvd_release_date="$6"
    local dvd_device="$7"
    local output_file_name="$8"
    local cover_art_name="$9"

    # rip the title
    DVD_TITLE=$(rip_dvd_title "$dvd_output_directory_path" "$dvd_title" "$dvd_angle" "$dvd_language" "$dvd_title_name" "$dvd_release_date" "$dvd_device" "$output_file_name" "$cover_art_name")
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

}

# rip the titles
rip_title_and_write_attributes "DVDs/$DVD_NAME" 5 1 "en" "Look Both Ways" "$DVD_RELEASE_DATE" "$DVD_ISO" "01. Look Both Ways" "$DVD_NAME"
rip_title_and_write_attributes "DVDs/$DVD_NAME" 6 1 "en" "John Bradlelum" "$DVD_RELEASE_DATE" "$DVD_ISO" "02. John Bradlelum" "$DVD_NAME"
rip_title_and_write_attributes "DVDs/$DVD_NAME" 7 1 "en" "Henry's Underwater Big Band" "$DVD_RELEASE_DATE" "$DVD_ISO" "03. Henry's Underwater Big Band" "$DVD_NAME"
rip_title_and_write_attributes "DVDs/$DVD_NAME" 8 1 "en" "Heads, Shoulders, Knees And Toes" "$DVD_RELEASE_DATE" "$DVD_ISO" "04. Heads, Shoulders, Knees And Toes" "$DVD_NAME"
rip_title_and_write_attributes "DVDs/$DVD_NAME" 9 1 "en" "Food Food Food (Oh How I Love My Food)" "$DVD_RELEASE_DATE" "$DVD_ISO" "05. Food Food Food (Oh How I Love My Food)" "$DVD_NAME"
rip_title_and_write_attributes "DVDs/$DVD_NAME" 10 1 "en" "Go Captain Feathersword, Ahoy!" "$DVD_RELEASE_DATE" "$DVD_ISO" "06. Go Captain Feathersword, Ahoy!" "$DVD_NAME"
rip_title_and_write_attributes "DVDs/$DVD_NAME" 11 1 "en" "Do The Wiggle Groove" "$DVD_RELEASE_DATE" "$DVD_ISO" "07. Do The Wiggle Groove" "$DVD_NAME"
rip_title_and_write_attributes "DVDs/$DVD_NAME" 12 1 "en" "Dorothy the Dinosaur (tell me who is that knocking!)" "$DVD_RELEASE_DATE" "$DVD_ISO" "08. Dorothy the Dinosaur (tell me who is that knocking!)" "$DVD_NAME"
rip_title_and_write_attributes "DVDs/$DVD_NAME" 13 1 "en" "Balla Balla Bambina" "$DVD_RELEASE_DATE" "$DVD_ISO" "09. Balla Balla Bambina" "$DVD_NAME"
rip_title_and_write_attributes "DVDs/$DVD_NAME" 14 1 "en" "I Climb Ten Stairs" "$DVD_RELEASE_DATE" "$DVD_ISO" "10. I Climb Ten Stairs" "$DVD_NAME"
rip_title_and_write_attributes "DVDs/$DVD_NAME" 15 1 "en" "Move Your Arms Like Henry" "$DVD_RELEASE_DATE" "$DVD_ISO" "11. Move Your Arms Like Henry" "$DVD_NAME"
rip_title_and_write_attributes "DVDs/$DVD_NAME" 16 1 "en" "Silver Bells That Ring In The Night" "$DVD_RELEASE_DATE" "$DVD_ISO" "12. Silver Bells That Ring In The Night" "$DVD_NAME"
rip_title_and_write_attributes "DVDs/$DVD_NAME" 17 1 "en" "Wags The Dog, He Likes To Tango" "$DVD_RELEASE_DATE" "$DVD_ISO" "13. Wags The Dog, He Likes To Tango" "$DVD_NAME"
rip_title_and_write_attributes "DVDs/$DVD_NAME" 18 1 "en" "We're Dancing With Wags The Dog" "$DVD_RELEASE_DATE" "$DVD_ISO" "14. We're Dancing With Wags The Dog" "$DVD_NAME"
rip_title_and_write_attributes "DVDs/$DVD_NAME" 19 1 "en" "Officer Beaples' Dance" "$DVD_RELEASE_DATE" "$DVD_ISO" "15. Officer Beaples' Dance" "$DVD_NAME"
rip_title_and_write_attributes "DVDs/$DVD_NAME" 20 1 "en" "Zardo Zap" "$DVD_RELEASE_DATE" "$DVD_ISO" "16. Zardo Zap" "$DVD_NAME"
rip_title_and_write_attributes "DVDs/$DVD_NAME" 21 1 "en" "Let's Have A Ceili" "$DVD_RELEASE_DATE" "$DVD_ISO" "17. Let's Have A Ceili" "$DVD_NAME"
rip_title_and_write_attributes "DVDs/$DVD_NAME" 22 1 "en" "Toot Toot, Chugga Chugga, Big Red Car" "$DVD_RELEASE_DATE" "$DVD_ISO" "18. Toot Toot, Chugga Chugga, Big Red Car" "$DVD_NAME"
rip_title_and_write_attributes "DVDs/$DVD_NAME" 23 1 "en" "Hot Potato" "$DVD_RELEASE_DATE" "$DVD_ISO" "19. Hot Potato" "$DVD_NAME"
rip_title_and_write_attributes "DVDs/$DVD_NAME" 24 1 "en" "D.O.R.O.T.H.Y. My Favourite Dinosaur" "$DVD_RELEASE_DATE" "$DVD_ISO" "20. D.O.R.O.T.H.Y. My Favourite Dinosaur" "$DVD_NAME"
rip_title_and_write_attributes "DVDs/$DVD_NAME" 25 1 "en" "Pufferbillies" "$DVD_RELEASE_DATE" "$DVD_ISO" "21. Pufferbillies" "$DVD_NAME"
rip_title_and_write_attributes "DVDs/$DVD_NAME" 26 1 "en" "Henry's Dance" "$DVD_RELEASE_DATE" "$DVD_ISO" "22. Henry's Dance" "$DVD_NAME"
rip_title_and_write_attributes "DVDs/$DVD_NAME" 27 1 "en" "Walk" "$DVD_RELEASE_DATE" "$DVD_ISO" "23. Walk" "$DVD_NAME"
rip_title_and_write_attributes "DVDs/$DVD_NAME" 28 1 "en" "Joannie Works With One Hammer" "$DVD_RELEASE_DATE" "$DVD_ISO" "24. Joannie Works With One Hammer" "$DVD_NAME"
rip_title_and_write_attributes "DVDs/$DVD_NAME" 29 1 "en" "The Monkey Dance" "$DVD_RELEASE_DATE" "$DVD_ISO" "25. The Monkey Dance" "$DVD_NAME"
rip_title_and_write_attributes "DVDs/$DVD_NAME" 30 1 "en" "Crunchy Munchy Honey Cakes" "$DVD_RELEASE_DATE" "$DVD_ISO" "26. Crunchy Munchy Honey Cakes" "$DVD_NAME"
rip_title_and_write_attributes "DVDs/$DVD_NAME" 31 1 "en" "Shaky Shaky" "$DVD_RELEASE_DATE" "$DVD_ISO" "27. Shaky Shaky" "$DVD_NAME"
rip_title_and_write_attributes "DVDs/$DVD_NAME" 32 1 "en" "Point Your Finger (Wiggle Puppets)" "$DVD_RELEASE_DATE" "$DVD_ISO" "28. Point Your Finger (Wiggle Puppets)" "$DVD_NAME"
rip_title_and_write_attributes "DVDs/$DVD_NAME" 33 1 "en" "Havenu Shalom Alechem" "$DVD_RELEASE_DATE" "$DVD_ISO" "29. Havenu Shalom Alechem" "$DVD_NAME"
rip_title_and_write_attributes "DVDs/$DVD_NAME" 34 1 "en" "I Am A Dancer" "$DVD_RELEASE_DATE" "$DVD_ISO" "30. I Am A Dancer" "$DVD_NAME"
rip_title_and_write_attributes "DVDs/$DVD_NAME" 35 1 "en" "Go Captain Feathersword, Ahoy (Wiggle Puppets)" "$DVD_RELEASE_DATE" "$DVD_ISO" "31. Go Captain Feathersword, Ahoy (Wiggle Puppets)" "$DVD_NAME"
rip_title_and_write_attributes "DVDs/$DVD_NAME" 36 1 "en" "Fruit Salad" "$DVD_RELEASE_DATE" "$DVD_ISO" "32. Fruit Salad" "$DVD_NAME"

# all ok
exit 0