cd ./deploy

# ENV Variables that are used the the platform-service-deploy.sh script
export ECS_CLUSTER=$ECS_CLUSTER_STG
export ECS_SERVICE=$ECS_SERVICE_STG
export SERVICE_CONTAINER_NAME=$ECS_SERVICE_STG
export CONTAINER_IMAGE=280159221453.dkr.ecr.us-east-1.amazonaws.com/${ECS_SERVICE_NAME}:${CIRCLE_BRANCH}-${CIRCLE_BUILD_NUM}
export SERVICE_TOKEN=C11120AC-A8AF-43E0-8844-0CE3B50BEAE2
export WISHABI_ENVIRONMENT=development

#download latest deploy script
aws s3 cp "s3://flipp-platform-development/deploy/platform-service-deploy.sh" platform-service-deploy.sh
chmod +x platform-service-deploy.sh
#Execute the deployment Scripts
./platform-service-deploy.sh

