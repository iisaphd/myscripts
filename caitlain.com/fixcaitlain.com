#!/bin/bash
#First replace 1 word links
sed -e 's:<a.\{1,100\}555555">\w\{1,20\}</a>::g'  < jos_content.sql > outputnew.sql
#next replace 2 word links
sed -e 's:<a.\{1,100\}555555">\w\{1,20\}\s\w\{1,20\}</a>::g'  < outputnew.sql > outputnew2.sql
mv outputnew2.sql outputnew.sql
#next replace 3 work links
sed -e 's:<a.\{1,100\}555555">\w\{1,20\}\s\w\{1,20\}\s\w\{1,20\}</a>::g'  < outputnew.sql > outputnew2.sql
mv outputnew2.sql outputnew.sql
#last remove single space links
sed -e 's:<a.\{1,100\}555555"> </a>::g'  < outputnew.sql > outputnew2.sql
mv outputnew2.sql outputnew.sql
