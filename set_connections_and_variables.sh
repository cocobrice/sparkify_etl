#!/bin/bash

# airflow connections get aws_credentials -o json 

airflow connections add aws_credentials --conn-uri 'Hidden'

airflow connections add redshift --conn-uri 'redshift://awsuser:*****@default-workgroup.075982540150.us-east-1.redshift-serverless.amazonaws.com:5439/dev'

airflow variables set s3_bucket blackd-udacity

airflow variables set s3_prefix data-pipelines
