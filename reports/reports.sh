#!/bin/bash
#Generating reports

if [ -f general_reports.csv ];
then 
 mv general_reports.csv general_reports.csv.$(date +%Y%m%d)
fi

# OS break out 
echo ",Count,OS Version," >> general_reports.csv
cut -d, -f6 auditReport.csv | grep -v os_fullname | sort | uniq -c| sort -rn -k1 | tr -s " " | tr " " ","  >> general_reports.csv
echo ",,,">> general_reports.csv

# Kernel versions
echo ",Count,Kernel Version," >> general_reports.csv
cut -d, -f11 auditReport.csv | grep -v linux_kernel_release | sort | uniq -c| sort -rn -k1 | tr -s " " | tr " " ","  >> general_reports.csv
echo ",,,">> general_reports.csv


# Kernel Schedulers
echo ",Count,Kernel Scheduler," >> general_reports.csv
cut -d, -f10 auditReport.csv | grep -v linux_kernel_io_scheduler | sort | uniq -c| sort -rn -k1 | tr -s " " | tr " " ","  >> general_reports.csv
echo ",,,">> general_reports.csv

# Firewall Software
echo ",Count,Firewall Software," >> general_reports.csv
cut -d, -f33 auditReport.csv | grep -v firewall_software | sort | uniq -c| sort -rn -k1 | tr -s " " | tr " " ","  >> general_reports.csv
echo ",,,">> general_reports.csv

# SE Linux Enabled
echo ",Count,SELinux Enabled," >> general_reports.csv
cut -d, -f35 auditReport.csv | grep -v framework_selinux | sort | uniq -c| sort -rn -k1 | tr -s " " | tr " " ","  >> general_reports.csv
echo ",,,">> general_reports.csv

# Session TimeOuts
echo ",Count,Session TimeOut Enabled," >> general_reports.csv
cut -d, -f82 auditReport.csv | grep -v session_timeout_enabled | sort | uniq -c| sort -rn -k1 | tr -s " " | tr " " ","  >> general_reports.csv
echo ",,,">> general_reports.csv

# Servers Uptime
echo ",Count,Uptime," >> general_reports.csv
cut -d, -f17 auditReport.csv | grep -v uptime_in_days | sort | uniq -c| sort -rn -k1 | tr -s " " | tr " " "," >> general_reports.csv
echo ",,,">> general_reports.csv

# Name Servers configurations
echo ",Count,Configured Name Servers," >> general_reports.csv
cut -d, -f54 auditReport.csv | grep -v nameserver | sort | uniq -c| sort -rn -k1 | tr -s " " | tr " " "," >> general_reports.csv
echo ",,,">> general_reports.csv

# Shell Shock
echo ",Servers vulnerable to ShellShock," >> general_reports.csv
grep -i shellshock auditReport.csv |cut -d, -f2 | tr "'" "," >> general_reports.csv
echo ",,,">> general_reports.csv





