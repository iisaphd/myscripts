find . -name VIDEO_TS -print0 | while read -d $'\0' file; do 
mkisofs -dvd-video -o "`echo  $file | cut -d'/' -f3`.iso" "`echo $file | cut -d'/' -f2-3`"; 
if [ $? eq 0 ]; then 
	echo I could remove
else 
	echo $file failed
fi
done

