#!/bin/bash
wget www.caitlain.com/index.php
hrefs=`cat index.php | grep 'a href' | wc | awk '{print $1}'`
status=`cat caitlain.com.status`
echo "hrefs $hrefs"
echo "status $status"
if [ $hrefs == $status ]
then
	echo "Site is ok"
	
else
	echo "Site attacked"
	echo "Site has been attacked" | email -f matthew.mclaurine@gmail.com -b -s 'Caitlain.com' -c /etc/email/email.conf -tls  matt@caitlain.com
fi
