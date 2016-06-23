#!/bin/bash
log_dir=/var/log/lynis
dest_dir=/opt/lynis
cd "$dest_dir" && sudo ./lynis -c --auditor "Job" --cronjob -Q > $log_dir/report-$(hostname).$(date +%Y%m%d).txt && mv /var/log/lynis.log $log_dir/report-log-$(hostname).$(date +%Y%m%d).log && mv /var/log/lynis-report.dat $log_dir/report-data-$(hostname).$(date +%Y%m%d).txt
