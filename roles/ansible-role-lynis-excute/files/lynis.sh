#!/bin/sh

AUDITOR="automated"
DATE=$(date +%Y%m%d)
HOST=$(hostname)
LOG_DIR="/var/log/lynis"
REPORT="$LOG_DIR/report-${HOST}.${DATE}"
DATA="$LOG_DIR/report-data-${HOST}.${DATE}"
LOG="$LOG_DIR/report-log-${HOST}.${DATE}"
DEST=/opt/lynis

rm -rf "$LOG_DIR/*"

cd "${DEST}"


# Run Lynis
./lynis audit system --auditor "${AUDITOR}" --cronjob > ${REPORT}

# Optional step: Move report file if it exists
if [ -f /var/log/lynis-report.dat ]; then
    mv /var/log/lynis-report.dat ${DATA}
fi
if [ -f /var/log/lynis.log ]; then
    mv /var/log/lynis.log ${LOG}
fi

# The End
