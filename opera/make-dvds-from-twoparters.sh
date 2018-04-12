#first convert the files into mpgs
for i in *.wmv
do
  ffmpeg -i "$i" -target ntsc-dvd -aspect 16:9 "${i%.wmv}.mpg"
done
#next use dvdauthor
dvdauthor -o <name of opera 1> -x <name of opera 1 xml file>
mkisofs -o <opera 1.iso> <opera 1 dvd directory>

