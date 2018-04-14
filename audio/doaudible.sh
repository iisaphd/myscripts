#!/bin/bash

#
# assumptions:
# You have converted the audible file to a single mp3 file
# You are in the directory of the file that needs to be converted
# There is only 1 file in this directory
# You have backed up this file before running this script
# You have the bc command installed

# Step 1: Establish file name
file=`ls`	# this script only works if there is one file in the directory
echo file is $file

# Step 2: Downsample to 32kbps mono and preserve the id3 tags
echo Downsampling...
ffmpeg -i "$file" -acodec mp3 -ab 32k -ac 1 -ar 22050 -map_metadata 0 -id3v2_version 3 "re$file"
mv "re$file" "$file"

# Step 3: Establish id3tags based on what directory we are in
# Step 3 is not stricly needed, but what the heck. 
author=`echo "$(dirname "$(pwd)")" | sed s:.*/$1:$1:` # Pass the name of the parent directory into sed and remove everything before the last /
book="`echo $(pwd) | sed s:.*/$1:$1:`"                # Name of book is in pwd. Once again, remove everything before the last /
echo id3v2 -a "$author" -A "$book" -t "$book" *.mp3
id3v2 -a "$author" -A "$book" -t "$book" *.mp3

# Step 4: Split the file into 5 minute parts
mp3splt -t 5.0 *.mp3

# Step 5: Remove the original file (make sure you have a copy of the original somewhere else JIC
rm "$file"

# Step 6: Reset the Title Tag for every file
echo Retagging title tag...
for j in *.mp3
do 
    id3v2 -t "${j%.mp3}" "$j"
done

# Next, put these files into the preferred dir structure.
# When all is said in done my files look like:
# <author>/<book name>/01/<first file in the range of 0 mins to 95 mins>
# <author>/<book name>/01/<second file in the range of 0 mins to 95 mins>
# ....
# <author>/<book name>/01/<last file in the range of 0 mins to 95 mins>
# <author>/<book name>/02/<first file in the range of 100 mins to 195 mins>
# ....
# <author>/<book name>/n/<last file in the range of n00 mins to n95 mins>

# first, figure out how many directories are needed
files=`ls -lah | wc | awk '{print $1}'` #this number is +3 higher than the actual
num=$(echo $files - 3 | bc)             #so, subtract 3

# Since we want 20 files per directory, then figure out num/20
directories=$(echo $num / 20 | bc)
modresult=$(echo $num % 20 | bc)
# If mod result != 0, then the number of directories is correct, otherwise subtract 1 from directories
if [ "$modresult" -eq 0 ]
then
    directories=$(echo $directories - 1 | bc)
fi
echo I have established that the number of directories is $directories

# second, place the files into subdirectories of 20 files each
# the if statement is required because for books having 10 or more directories,
# I want directories 1 - 9 to actually be 01, 02, 03, ... 09 instead of 1, 2, 3, ... 9
if [ "$directories" -lt 10 ]
then
    # need to strip .mp3 out the value of $file and add an underscore
    bookname="${file%.mp3}_"
    echo pattern to match is $bookname
    for i in `seq 0 $directories`
    do 
        mkdir $i
        mv $bookname$i* $i
    done
else
    # need to strip .mp3 out the value of $file
    bookname="${file%.mp3}"
    echo pattern to match is $bookname
    for i in `seq 0 9`
    do 
        mkdir 0$i
        mv "$bookname"_0$i* 0$i
    done
    for i in `seq 10 $directories`
    do 
        mkdir $i
        mv "$bookname"_$i* $i
    done
fi

# done
# For the book "Bleeding Edge" by Thomas Pynchon, the result of running this script
# will be the following list of files:
# ./Pynchon, Thomas/Bleeding Edge
# ./Pynchon, Thomas/Bleeding Edge/00/BleedingEdge_0000m_00s__0005m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/00/BleedingEdge_0005m_00s__0010m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/00/BleedingEdge_0010m_00s__0015m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/00/BleedingEdge_0015m_00s__0020m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/00/BleedingEdge_0020m_00s__0025m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/00/BleedingEdge_0025m_00s__0030m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/00/BleedingEdge_0030m_00s__0035m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/00/BleedingEdge_0035m_00s__0040m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/00/BleedingEdge_0040m_00s__0045m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/00/BleedingEdge_0045m_00s__0050m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/00/BleedingEdge_0050m_00s__0055m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/00/BleedingEdge_0055m_00s__0060m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/00/BleedingEdge_0060m_00s__0065m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/00/BleedingEdge_0065m_00s__0070m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/00/BleedingEdge_0070m_00s__0075m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/00/BleedingEdge_0075m_00s__0080m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/00/BleedingEdge_0080m_00s__0085m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/00/BleedingEdge_0085m_00s__0090m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/00/BleedingEdge_0090m_00s__0095m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/00/BleedingEdge_0095m_00s__0100m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/01/BleedingEdge_0100m_00s__0105m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/01/BleedingEdge_0105m_00s__0110m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/01/BleedingEdge_0110m_00s__0115m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/01/BleedingEdge_0115m_00s__0120m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/01/BleedingEdge_0120m_00s__0125m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/01/BleedingEdge_0125m_00s__0130m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/01/BleedingEdge_0130m_00s__0135m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/01/BleedingEdge_0135m_00s__0140m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/01/BleedingEdge_0140m_00s__0145m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/01/BleedingEdge_0145m_00s__0150m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/01/BleedingEdge_0150m_00s__0155m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/01/BleedingEdge_0155m_00s__0160m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/01/BleedingEdge_0160m_00s__0165m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/01/BleedingEdge_0165m_00s__0170m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/01/BleedingEdge_0170m_00s__0175m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/01/BleedingEdge_0175m_00s__0180m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/01/BleedingEdge_0180m_00s__0185m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/01/BleedingEdge_0185m_00s__0190m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/01/BleedingEdge_0190m_00s__0195m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/01/BleedingEdge_0195m_00s__0200m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/02/BleedingEdge_0200m_00s__0205m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/02/BleedingEdge_0205m_00s__0210m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/02/BleedingEdge_0210m_00s__0215m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/02/BleedingEdge_0215m_00s__0220m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/02/BleedingEdge_0220m_00s__0225m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/02/BleedingEdge_0225m_00s__0230m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/02/BleedingEdge_0230m_00s__0235m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/02/BleedingEdge_0235m_00s__0240m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/02/BleedingEdge_0240m_00s__0245m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/02/BleedingEdge_0245m_00s__0250m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/02/BleedingEdge_0250m_00s__0255m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/02/BleedingEdge_0255m_00s__0260m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/02/BleedingEdge_0260m_00s__0265m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/02/BleedingEdge_0265m_00s__0270m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/02/BleedingEdge_0270m_00s__0275m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/02/BleedingEdge_0275m_00s__0280m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/02/BleedingEdge_0280m_00s__0285m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/02/BleedingEdge_0285m_00s__0290m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/02/BleedingEdge_0290m_00s__0295m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/02/BleedingEdge_0295m_00s__0300m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/03/BleedingEdge_0300m_00s__0305m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/03/BleedingEdge_0305m_00s__0310m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/03/BleedingEdge_0310m_00s__0315m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/03/BleedingEdge_0315m_00s__0320m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/03/BleedingEdge_0320m_00s__0325m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/03/BleedingEdge_0325m_00s__0330m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/03/BleedingEdge_0330m_00s__0335m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/03/BleedingEdge_0335m_00s__0340m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/03/BleedingEdge_0340m_00s__0345m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/03/BleedingEdge_0345m_00s__0350m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/03/BleedingEdge_0350m_00s__0355m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/03/BleedingEdge_0355m_00s__0360m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/03/BleedingEdge_0360m_00s__0365m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/03/BleedingEdge_0365m_00s__0370m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/03/BleedingEdge_0370m_00s__0375m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/03/BleedingEdge_0375m_00s__0380m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/03/BleedingEdge_0380m_00s__0385m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/03/BleedingEdge_0385m_00s__0390m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/03/BleedingEdge_0390m_00s__0395m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/03/BleedingEdge_0395m_00s__0400m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/04/BleedingEdge_0400m_00s__0405m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/04/BleedingEdge_0405m_00s__0410m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/04/BleedingEdge_0410m_00s__0415m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/04/BleedingEdge_0415m_00s__0420m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/04/BleedingEdge_0420m_00s__0425m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/04/BleedingEdge_0425m_00s__0430m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/04/BleedingEdge_0430m_00s__0435m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/04/BleedingEdge_0435m_00s__0440m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/04/BleedingEdge_0440m_00s__0445m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/04/BleedingEdge_0445m_00s__0450m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/04/BleedingEdge_0450m_00s__0455m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/04/BleedingEdge_0455m_00s__0460m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/04/BleedingEdge_0460m_00s__0465m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/04/BleedingEdge_0465m_00s__0470m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/04/BleedingEdge_0470m_00s__0475m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/04/BleedingEdge_0475m_00s__0480m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/04/BleedingEdge_0480m_00s__0485m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/04/BleedingEdge_0485m_00s__0490m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/04/BleedingEdge_0490m_00s__0495m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/04/BleedingEdge_0495m_00s__0500m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/05/BleedingEdge_0500m_00s__0505m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/05/BleedingEdge_0505m_00s__0510m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/05/BleedingEdge_0510m_00s__0515m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/05/BleedingEdge_0515m_00s__0520m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/05/BleedingEdge_0520m_00s__0525m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/05/BleedingEdge_0525m_00s__0530m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/05/BleedingEdge_0530m_00s__0535m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/05/BleedingEdge_0535m_00s__0540m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/05/BleedingEdge_0540m_00s__0545m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/05/BleedingEdge_0545m_00s__0550m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/05/BleedingEdge_0550m_00s__0555m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/05/BleedingEdge_0555m_00s__0560m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/05/BleedingEdge_0560m_00s__0565m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/05/BleedingEdge_0565m_00s__0570m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/05/BleedingEdge_0570m_00s__0575m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/05/BleedingEdge_0575m_00s__0580m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/05/BleedingEdge_0580m_00s__0585m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/05/BleedingEdge_0585m_00s__0590m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/05/BleedingEdge_0590m_00s__0595m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/05/BleedingEdge_0595m_00s__0600m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/06/BleedingEdge_0600m_00s__0605m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/06/BleedingEdge_0605m_00s__0610m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/06/BleedingEdge_0610m_00s__0615m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/06/BleedingEdge_0615m_00s__0620m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/06/BleedingEdge_0620m_00s__0625m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/06/BleedingEdge_0625m_00s__0630m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/06/BleedingEdge_0630m_00s__0635m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/06/BleedingEdge_0635m_00s__0640m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/06/BleedingEdge_0640m_00s__0645m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/06/BleedingEdge_0645m_00s__0650m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/06/BleedingEdge_0650m_00s__0655m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/06/BleedingEdge_0655m_00s__0660m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/06/BleedingEdge_0660m_00s__0665m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/06/BleedingEdge_0665m_00s__0670m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/06/BleedingEdge_0670m_00s__0675m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/06/BleedingEdge_0675m_00s__0680m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/06/BleedingEdge_0680m_00s__0685m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/06/BleedingEdge_0685m_00s__0690m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/06/BleedingEdge_0690m_00s__0695m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/06/BleedingEdge_0695m_00s__0700m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/07/BleedingEdge_0700m_00s__0705m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/07/BleedingEdge_0705m_00s__0710m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/07/BleedingEdge_0710m_00s__0715m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/07/BleedingEdge_0715m_00s__0720m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/07/BleedingEdge_0720m_00s__0725m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/07/BleedingEdge_0725m_00s__0730m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/07/BleedingEdge_0730m_00s__0735m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/07/BleedingEdge_0735m_00s__0740m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/07/BleedingEdge_0740m_00s__0745m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/07/BleedingEdge_0745m_00s__0750m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/07/BleedingEdge_0750m_00s__0755m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/07/BleedingEdge_0755m_00s__0760m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/07/BleedingEdge_0760m_00s__0765m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/07/BleedingEdge_0765m_00s__0770m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/07/BleedingEdge_0770m_00s__0775m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/07/BleedingEdge_0775m_00s__0780m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/07/BleedingEdge_0780m_00s__0785m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/07/BleedingEdge_0785m_00s__0790m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/07/BleedingEdge_0790m_00s__0795m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/07/BleedingEdge_0795m_00s__0800m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/08/BleedingEdge_0800m_00s__0805m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/08/BleedingEdge_0805m_00s__0810m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/08/BleedingEdge_0810m_00s__0815m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/08/BleedingEdge_0815m_00s__0820m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/08/BleedingEdge_0820m_00s__0825m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/08/BleedingEdge_0825m_00s__0830m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/08/BleedingEdge_0830m_00s__0835m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/08/BleedingEdge_0835m_00s__0840m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/08/BleedingEdge_0840m_00s__0845m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/08/BleedingEdge_0845m_00s__0850m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/08/BleedingEdge_0850m_00s__0855m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/08/BleedingEdge_0855m_00s__0860m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/08/BleedingEdge_0860m_00s__0865m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/08/BleedingEdge_0865m_00s__0870m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/08/BleedingEdge_0870m_00s__0875m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/08/BleedingEdge_0875m_00s__0880m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/08/BleedingEdge_0880m_00s__0885m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/08/BleedingEdge_0885m_00s__0890m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/08/BleedingEdge_0890m_00s__0895m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/08/BleedingEdge_0895m_00s__0900m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/09/BleedingEdge_0900m_00s__0905m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/09/BleedingEdge_0905m_00s__0910m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/09/BleedingEdge_0910m_00s__0915m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/09/BleedingEdge_0915m_00s__0920m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/09/BleedingEdge_0920m_00s__0925m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/09/BleedingEdge_0925m_00s__0930m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/09/BleedingEdge_0930m_00s__0935m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/09/BleedingEdge_0935m_00s__0940m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/09/BleedingEdge_0940m_00s__0945m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/09/BleedingEdge_0945m_00s__0950m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/09/BleedingEdge_0950m_00s__0955m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/09/BleedingEdge_0955m_00s__0960m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/09/BleedingEdge_0960m_00s__0965m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/09/BleedingEdge_0965m_00s__0970m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/09/BleedingEdge_0970m_00s__0975m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/09/BleedingEdge_0975m_00s__0980m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/09/BleedingEdge_0980m_00s__0985m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/09/BleedingEdge_0985m_00s__0990m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/09/BleedingEdge_0990m_00s__0995m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/09/BleedingEdge_0995m_00s__1000m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/10/BleedingEdge_1000m_00s__1005m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/10/BleedingEdge_1005m_00s__1010m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/10/BleedingEdge_1010m_00s__1015m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/10/BleedingEdge_1015m_00s__1020m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/10/BleedingEdge_1020m_00s__1025m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/10/BleedingEdge_1025m_00s__1030m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/10/BleedingEdge_1030m_00s__1035m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/10/BleedingEdge_1035m_00s__1040m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/10/BleedingEdge_1040m_00s__1045m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/10/BleedingEdge_1045m_00s__1050m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/10/BleedingEdge_1050m_00s__1055m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/10/BleedingEdge_1055m_00s__1060m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/10/BleedingEdge_1060m_00s__1065m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/10/BleedingEdge_1065m_00s__1070m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/10/BleedingEdge_1070m_00s__1075m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/10/BleedingEdge_1075m_00s__1080m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/10/BleedingEdge_1080m_00s__1085m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/10/BleedingEdge_1085m_00s__1090m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/10/BleedingEdge_1090m_00s__1095m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/10/BleedingEdge_1095m_00s__1100m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/11/BleedingEdge_1100m_00s__1105m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/11/BleedingEdge_1105m_00s__1110m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/11/BleedingEdge_1110m_00s__1115m_00s.mp3
# ./Pynchon, Thomas/Bleeding Edge/11/BleedingEdge_1115m_00s__1118m_45s_14h.mp3
