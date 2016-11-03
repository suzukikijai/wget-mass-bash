#!/bin/bash  
szFUrl=$(zenity --entry --text "Enter source url" --entry-text "")
szBUrl=$(zenity --entry --text "Enter source url" --entry-text "")
szSavePath=$(zenity --file-selection --save --confirm-overwrite);mkdir $szSavePath
ans=$(zenity --scale --text "Number of repetitions" --min-value=1 --max-value=100 --value=1 --step 1)
cd $szSavePath
#wget -r -np -nH –cut-dirs=3 -R index.html $szUrl
for((i=1;i<=$ans;i+=1)); do wget $szFUrl$i$szBUrl; done
echo Extract over

