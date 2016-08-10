#!/bin/bash

header=$(cat  fields | tr "\\n" ",");
echo $header >> auditReport.csv;  
for f in $(ls $1); 
do
 echo $f;
 field=""; 
 for i in $(cat fields); 
  do 
    field="$field'$(grep ^$i audit_report/$f | cut -d= -f2 |tr "," " " )',";
 done;
    echo $field >> auditReport.csv;
done


