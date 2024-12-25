#!/bin/bash

################
# Author: Adhil
# simple aws resourse tracker script
################

#AWS S3
#AWS EC2
#AWS Lambda
#AWS IAM users

#list s3 buckets
echo "LIST OF BUCKETS:"
aws s3 ls


#list EC2 Instances
echo "LIST OF EC2 INSTANCES:"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'


#list lambda
echo "LIST OF LAMBDA FUNCTIONS:"
aws lambda list-functions


#list IAM users
echo "LIST OF IAM USERS:"
aws iam list-users

