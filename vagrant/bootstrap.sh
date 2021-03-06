apt-get update
apt-get install -y git ruby ruby-dev make gcc dos2unix nodejs
gem install jekyll bundler

if [ ! -d "/vagrant/git" ]; then
  mkdir /vagrant/git
fi
cd /vagrant/git
if [ ! -d "/vagrant/git/genderkit" ]; then
  git clone https://github.com/genderkit/genderkit.git
fi
cd /vagrant/git/genderkit
su vagrant
bundle install