
 aws s3 mb s3://bgo2018staticweb

 aws s3api get-bucket-policy --bucket bgo2018staticweb

aws s3api get-bucket-policy --bucket bgo2018staticweb --query Policy --output text > policy.json