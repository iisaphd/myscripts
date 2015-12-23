curl http://50.4.103.221:3000/dashboard/show > /dev/null
if [ $? -ne 0 ] 
  then  mail matthew.mclaurine@accenture.com, matthew.mclaurine@gmail.com << EOF
	The dashboard is down
EOF
fi
