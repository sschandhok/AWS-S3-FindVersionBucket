#!/bin/bash
while read line
do
cmd=`aws s3api get-bucket-versioning --bucket $line`
if [ "$cmd" == "Enabled" ]; then
echo -e "$line \n"
fi
done < list2.txt #Add file here instead of list2.txt
