# AWS-workshop
Repo for aws workshop in Bergen

Store any secret key in a folder named "aws-keys-config"

# Crudos
Docker images based on this:
Get Dockerfile:
https://github.com/mikesir87/aws-cli-docker/blob/master/Dockerfile

http://mamchenkov.net/wordpress/2016/10/31/easier-aws-cli-with-docker/

# getting started

* docker build -t aws-cli .
* create a IAM account in aws
* not the access_key, access_secret_key
* run the docker image with your values:
docker run -it --rm -v <your path to git repo>/resources:/aws -e AWS_DEFAULT_REGION='eu-central-1' -e AWS_ACCESS_KEY_ID='[your key]' -e AWS_SECRET_ACCESS_KEY='[your secret key]' aws-cli

