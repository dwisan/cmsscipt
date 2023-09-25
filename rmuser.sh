while IFS= read -r line
do
 IFS=','
 read -ra Arr <<< $line
 /usr/local/bin/cmsRemoveUser ${Arr[0]}
done < $1
