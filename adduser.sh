if [ $# -lt 2 ]
  then
    echo ""
    echo "Usage: bash adduser.sh userfile contest_id"
    echo "example: bash adduser.sh userlist.txt 12"
    echo ""
    echo "deail:"
    echo "userifle : textfile of userformat"
    echo "contest_id: id of contest"

    echo ""
    echo "users text format:"
    echo "format:: username,password,name,surname,email,timezone"
    echo "example:: wisan01,pass123,Wisan,Dermlim,wisan.d@psu.ac.th,Asia/Bangkok"
    exit 0
fi

while IFS= read -r line
do
 IFS=','
 read -ra Arr <<< $line
 /usr/local/bin/cmsAddUser -e ${Arr[4]} -t ${Arr[5]} -p ${Arr[1]} ${Arr[2]} ${Arr[3]} ${Arr[0]}
done < $1
