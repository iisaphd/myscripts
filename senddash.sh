#!/bin/bash
# check for xxx file:
if [ -e ~/IAM_REPORT* ]
  then
    rsync -av ~/IAM_REPORT* pi@pi2:~/dashboard/
    rm ~/IAM_REPORT*
fi
if [ -e ~/Notices_Daily_Tracker_Report* ]
  then
    rsync -av ~/Notices_Daily_Tracker_Report* pi@pi2:~/dashboard/
    rm ~/Notices_Daily_Tracker_Report*
fi
if [ -e ~/NoticesDailyReport* ]
  then
    rsync -av ~/NoticesDailyReport* pi@pi2:~/dashboard/
    rm ~/NoticesDailyReport*
fi
