



#!/bin/bash

echo axo-aws installer 
echo axo-aws installer 

mkdir axo-aws
cd axo-aws

echo "Do you have the AWSCLI file? (Y/N)"
read answer

if [[ $answer == "N" || $answer == "n" ]]; then
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
    unzip awscliv2.zip
fi

sudo ./aws/install

echo "Access Key ID: AKIAJ366LIPB4IJKT7SA"
echo "Secret Access Key: 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"

aws configure




echo "Do you have the CLOUD_ENUM file? (Y/N)"
read answer

if [[ $answer == "N" || $answer == "n" ]]; then
    git clone https://github.com/initstring/cloud_enum

fi

cd cloud_enum
pip3 install -r requirements.txt

wget https://raw.githubusercontent.com/axosecurity/axo-aws/main/megacloud.txt 
wget https://raw.githubusercontent.com/axosecurity/axo-aws/main/kidcloud.txt

python cloud_enum.py --help 
