#!/bin/bash

echo "setting sso aws profile"
cp ~/.aws/credentials-sso ~/.aws/credentials
echo "sso profile" > ~/.aws/current-profile.txt
echo "profile set to $(cat ~/.aws/current-profile.txt)"
aws sts get-caller-identity | jq -r '.Arn'