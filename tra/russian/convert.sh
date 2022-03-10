#!/bin/bash
#enter input encoding here
FROM_ENCODING="CP1251"
#output encoding(UTF-8)
TO_ENCODING="UTF-8"
#convert
CONVERT=" iconv  -f   $FROM_ENCODING  -t   $TO_ENCODING"
#loop to convert multiple files 
for  file  in BP#DEH.tra BP#DEH25.tra BP#KIV.tra BP#KIV25.tra P#DEFT25.tra SETUP.TRA journal.tra setup-ee.tra p#ki25j.tra
do
     echo "converting $file"
     $CONVERT "$file"   -o  "${file%.tra}.tra"
done
exit 0

