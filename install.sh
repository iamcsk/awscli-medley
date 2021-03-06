# General alpine linux updated
apk update

#install python 
apk add python3

# Install virtual package list 
apk add --no-cache --virtual .build-deps

# Adding curl and gnupg  
apk add curl bash gnupg

# Adding nodejs
apk add nodejs npm

# install yarn
apk add yarn

# install git
apk add git

# Install aws cli dependency python 
apk add python py-pip openssl ca-certificates

# link python3.8 to python
ln -s /usr/bin/python3.8 /usr/bin/python

# install aws cli 
curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
unzip awscli-bundle.zip
./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws

#rm cach
apk --purge -v del py-pip
rm /var/cache/apk/*