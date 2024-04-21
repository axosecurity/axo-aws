#!/bin/bash

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
