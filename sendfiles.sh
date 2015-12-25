#!/bin/bash
# check for xxx file:
if [ -e ~/IAM_REPORT* ]
  then
    rsync -av ~/IAM_REPORT* pi@50.4.103.221:~/
    rm ~/IAM_REPORT*
fi
if [ -e ~/Notices_Daily_Tracker_Report* ]
  then
    rsync -av ~/Notices_Daily_Tracker_Report* pi@50.4.103.221:~/
    rm ~/Notices_Daily_Tracker_Report*
fi
if [ -e ~/NoticesDailyReport* ]
  then
    rsync -av ~/NoticesDailyReport* pi@50.4.103.221:~/
    rm ~/NoticesDailyReport*
fi

