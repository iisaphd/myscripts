ps -ef | grep ruby > isruby.out
 String=`grep rails isruby.out | grep 3000`   # Zero-length ("null") string variable.

if [ -z "$String" ]
then
  cd ~/dashboard &&  nohup /usr/local/rvm/rubies/ruby-2.2.1/bin/ruby bin/rails server --binding=0.0.0.0 -p 3000
fi     # $String is null.
