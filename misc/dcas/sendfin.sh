if [ -e ~/finance.xlsx ]
  then
    rsync -av ~/finance.xlsx pi@pi2:~/finances/finance.xlsx
    rm ~/finance.xlsx
    `curl http://50.4.103.221:6969/database/clear`
fi
