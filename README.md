# AWS CLI Docker Image
Will run "aws" commands, based on python3 runtime inside alpine linux (bash shell installed if needed)


### Requirements:
* Environment Variables must be set: `AWSDEFAULTREGION`, `AWSACCESSKEYID`, `AWSSECRETACCESSKEY`
* Docker (obviously) and the image needs to be built (`docker build...`)

### Example Run (after building):
The env vars (secret key, etc) must be configured here. Example has the image built as "built_image_name":

```
docker run \
-e AWS_SECRET_ACCESS_KEY='xyz123' \
-e AWS_ACCESS_KEY_ID='xyz123' \
-e AWS_DEFAULT_REGION='us-east-1' \
built_image_name:0.1 \ 
aws ec2 create-snapshot --volume-id vol-0c7ab5efba0a3f226 --description "Test Snapshot"
```