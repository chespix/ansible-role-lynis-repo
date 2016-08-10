#!/bin/bash

if [ -f auditReport.csv ];
then
 mv auditReport.csv auditReport.csv.$(date +%Y%m%d)
fi

header=$(cat  fields | tr "\\n" ",");
echo $header >> auditReport.csv;  
for f in $(find  $1 -name report-data-*); 
do
 echo $f;
 field=""; 
 for i in $(cat fields); 
  do 
    field="$field'$(grep ^$i $f | cut -d= -f2 |tr "," " " )',";
 done;
    echo $field >> auditReport.csv;
done


