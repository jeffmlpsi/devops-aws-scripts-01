#!/bin/bash
# from https://repost.aws/questions/QUOWc-q2EKQDWindzFRWt2rA/iam-identity-center-already-registered-another-regionq
for region in $(aws ec2 describe-regions --query 'Regions[].{Name:RegionName}' --output text)
do
     echo -e "\n* ${region}"
     aws sso-admin list-instances --region "${region}"
done