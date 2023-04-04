# create an s3 bucket
aws s3 mb s3://phongnx-code-sam

# package cloudformation
aws cloudformation package  --s3-bucket phongnx-code-sam --template-file template.yaml --output-template-file gen/template-generated.yaml
# sam package ... 

# deploy 
aws cloudformation deploy --template-file gen/template-generated.yaml --stack-name phongnx-hello-world-sam --capabilities CAPABILITY_IAM