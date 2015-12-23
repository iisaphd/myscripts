##### Ffmeg ####
mkdir ~/ffmpeg_sources

sudo apt-get install yasm

sudo apt-get install libx264-dev

sudo apt-get install cmake mercurial
cd ~/ffmpeg_sources
hg clone https://bitbucket.org/multicoreware/x265
cd ~/ffmpeg_sources/x265/build/linux
PATH="$HOME/bin:$PATH" cmake -G "Unix Makefiles" -DCMAKE_INSTALL_PREFIX="$HOME/ffmpeg_build" -DENABLE_SHARED:bool=off ../../source
make
make install
make distclean

cd ~/ffmpeg_sources
wget -O fdk-aac.tar.gz https://github.com/mstorsjo/fdk-aac/tarball/master
tar xzvf fdk-aac.tar.gz
cd mstorsjo-fdk-aac*
autoreconf -fiv
./configure --prefix="$HOME/ffmpeg_build" --disable-shared
make
make install
make distclean

sudo apt-get install libmp3lame-dev

cd ~/ffmpeg_sources
wget http://storage.googleapis.com/downloads.webmproject.org/releases/webm/libvpx-1.4.0.tar.bz2
tar xjvf libvpx-1.4.0.tar.bz2
cd libvpx-1.4.0
PATH="$HOME/bin:$PATH" ./configure --prefix="$HOME/ffmpeg_build" --disable-examples --disable-unit-tests
PATH="$HOME/bin:$PATH" make
make install
make clean

cd ~/ffmpeg_sources
wget http://ffmpeg.org/releases/ffmpeg-snapshot.tar.bz2
tar xjvf ffmpeg-snapshot.tar.bz2
cd ffmpeg
PATH="$HOME/bin:$PATH" PKG_CONFIG_PATH="$HOME/ffmpeg_build/lib/pkgconfig" ./configure \
  --prefix="$HOME/ffmpeg_build" \
  --pkg-config-flags="--static" \
  --extra-cflags="-I$HOME/ffmpeg_build/include" \
  --extra-ldflags="-L$HOME/ffmpeg_build/lib" \
  --bindir="$HOME/bin" \
  --enable-gpl \
  --enable-libass \
  --enable-libfdk-aac \
  --enable-libfreetype \
  --enable-libmp3lame \
  --enable-libopus \
  --enable-libtheora \
  --enable-libvorbis \
  --enable-libvpx \
  --enable-libx264 \
  --enable-libx265 \
  --enable-nonfree
PATH="$HOME/bin:$PATH" make
make install
make distclean
hash -r

##### Calibre #####
sudo -v && wget -nv -O- https://raw.githubusercontent.com/kovidgoyal/calibre/master/setup/linux-installer.py | sudo python -c "import sys; main=lambda:sys.stderr.write('Download failed\n'); exec(sys.stdin.read()); main()"

##### DosBox #####
sudo apt-get install dosbox

##### Google Chrome #####
sudo dpkg -i /media/lance/data/downloads/google-chrome-stable_current_amd64.deb

##### Emacs #####
sudo apt-get install emacs

##### Fslint #####
sudo apt-get install fslint

##### Git #####
sudo apt-get install git

##### Gparted #####
sudo apt-get install gparted

##### Grive #####
sudo add-apt-repository ppa:thefanclub/grive-tools
sudo apt-get update
sudo apt-get install grive-tools
# additional step required after launching the app with grive -a

##### Default Java #####
sudo apt-get install default-jre
sudo apt-get install default-jdk
#sudo apt-get install openjdk-7-jre
#apt-get install openjdk-7-jdk

##### Mail #####
sudo apt-get install postfix

##### Mongo DB #####
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.0.list
sudo apt-get update
sudo apt-get install -y mongodb-org

##### mp3splt #####
sudo apt-get install mp3splt

##### Oracle Java #####
sudo apt-get install python-software-properties
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java8-installer
sudo update-alternatives --config java
sudo update-alternatives --config javac

##### Mame #####
sudo add-apt-repository ppa:c.falco/mame 
sudo apt-get update
sudo apt-get install mame
mame
cd ~/.mame && mame -cc
#remember to set the rompaths or just get a backup from crashplan
mkdir ~/mame/roms
rsync -av pi@192.168.1.96:/media/SED/data/Games/mame/pacman*
rsync -av pi@192.168.1.96:/media/SED/data/Games/mame/berz*
rsync -av pi@192.168.1.96:/media/SED/data/Games/mame/mspac*
rsync -av pi@192.168.1.96:/media/SED/data/Games/mame/dkong*

##### Scumvm #####
# get it here: http://prdownloads.sourceforge.net/scummvm/scummvm_1.7.0-trusty.1_amd64.deb?download
# may have to get sdl also
wget http://prdownloads.sourceforge.net/scummvm/scummvm_1.7.0-trusty.1_amd64.deb?download
mv scummvm_1.7.0-trusty.1_amd64.deb\?download scummvm_1.7.0-trusty.1_amd64.deb
sudo dpkg -i scummvm_1.7.0-trusty.1_amd64.deb


##### Stellarium #####
sudo add-apt-repository ppa:stellarium/stellarium-releases
sudo apt-get update
sudo apt-get install stellarium

##### Truecrypt #####
# get it from evernote

##### Wine and Play on Linux #####
sudo add-apt-repository ppa:ubuntu-wine/ppa
sudo apt-get update
sudo apt-get install wine1.6
sudo apt-get install wine1.7
wget -q "http://deb.playonlinux.com/public.gpg" -O- | sudo apt-key add -
sudo wget http://deb.playonlinux.com/playonlinux_.list -O /etc/apt/sources.list.d/playonlinux.list
sudo apt-get update
sudo apt-get install playonlinux
# Get tarball off of 1TB drive: oed.tar.gz
tar xfvz /media/truecrypt3/oed.tar.gz -C ~/

##### Zeal #####
sudo add-apt-repository ppa:zeal-developers/ppa
sudo apt-get update
sudo apt-get install zeal
# backup of docsets is in .local on crashplan
tar xfvz /media/truecypt3/docset.tar.gz -C /

##### VirtualBox #####
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
sudo apt-get update
sudo apt-get install virtualbox-5.0
sudo apt-get install dkms

##### DEVELOPMENT #####

##### RVM #####
sudo apt-get update
sudo apt-get install curl
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable --rails
source ~/.rvm/scripts/rvm
rvm requirements


##### Ruby #####
rvm install ruby
rvm use ruby --default
rvm rubygems current
gem install rails
rvm install ruby-2.2.3
echo "rvm install {ruby_version} for other versions"
echo "rvm gemset create gemset_name    # create a gemset"
echo "rvm ruby_version@gemset_name  # specify Ruby version and our new gemset"
echo "gem install rails -v rails_version   # install specific Rails version"
echo "##### Note: ctrl-alt-T -> Edit Menu -> Edit Profiles -> Edit -> Title and Command -> Run Command as Login Shell"
sudo apt-get install nodejs
gem install chartkick
gem install creek
##### Install the dependencies for enroll app #####
sudo apt-get install build-essential checkinstall
sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev
sudo apt-get install build-essential bison openssl libreadline6 libreadline6-dev curl git-core zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-0 libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev ncurses-dev
sudo apt-get install libgmp-dev # this was important for install some of the gems in enroll
gem install bundler
gem install nokogiri
gem install aws-sdk
gem install unicorn
gem install sass-rails
gem install uglifier
gem install coffee-rails
gem install therubyracer
gem install jquery-rails
gem install jquery-ui-rails
gem install animate-rails
gem install maskedinput-rails
gem install jquery-turbolinks
gem install turbolinks
gem install jbuilder
gem install sdoc
gem install less-rails-bootstrap
gem install font-awesome-rails
gem install happymapper
gem install nokogiri-happymapper
gem install mongoid
gem install origin
gem install moped
gem install carrierwave-mongoid
gem install mongoid_auto_increment
gem install mongoid-versioning
gem install money-rails
gem install mongoid-enum
gem install symmetric-encryption
gem install bcrypt
gem install aasm
gem install haml
gem install sass
gem install roo
gem install devise
gem install pundit
gem install redis-rails
gem install kaminari
gem install sprockets
gem install rails-i18n
gem install mail
gem install bson
gem install language_list
gem install bootstrap-multiselect-rails
gem install bootstrap-slider-rails
gem install prawn
gem install virtus
gem install wkhtmltopdf-binary-edge
gem install wicked-pdf
gem install wicked_pdf
gem install recaptcha
gem install pry
gem install pry-rails
gem install pry-stack_explorer
gem install pry-byebug
gem install pry-remote
gem install web-console
gem install spring
gem install capistrano
gem install capistrano-rails
gem install ruby-progressbar
gem install rspec-rails
gem install factory_girl_rails
gem install forgery
gem install email_spec
gem install aws-sdk
gem install ruby-saml
gem install acapi
#### The test environment gems #####
gem install mongoid-rspec
gem install watir
gem install cucumber-rails
gem install database_cleaner
gem install shoulda-matchers
gem install action_mailer_cache_delivery
git clone https://github.com/dchbx/enroll.git
cd enroll
bundle


##### Postgres #####
sudo apt-get install postgresql postgresql-contrib
sudo apt-get install pgadmin3
sudo -u postgres psql postgres
#\password postgres
sudo -u postgres createdb mydb
sudo apt-get install libpq-dev
gem install pg
sudo -u postgres createuser --superuser $USER
sudo -u postgres psql
#\password lance
	sudo -u postgres createdb $USER
