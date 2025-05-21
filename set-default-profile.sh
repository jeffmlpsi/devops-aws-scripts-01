#!/bin/bash

echo "setting default aws profile"
cp ~/.aws/credentials-default ~/.aws/credentials
echo "default profile" > ~/.aws/current-profile.txt
echo "aws profile set to $(cat ~/.aws/current-profile.txt)"
aws sts get-caller-identity | jq -r '.Arn'