#!/bin/bash

echo "current aws profile: $(cat ~/.aws/current-profile.txt)"
aws sts get-caller-identity | jq -r '.Arn'