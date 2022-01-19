#! /bin/bash
sudo yum -y update
sudo yum install git -y
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.1/install.sh | bash
# source ~/.bashrc
export NVM_DIR="/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" 
nvm install 15
git clone #file repo here
cd platform-tech-test
npm install
node /aws-ec2-node-server/app.js