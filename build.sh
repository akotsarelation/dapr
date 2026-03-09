set -e

export DAPR_REGISTRY=570488747013.dkr.ecr.us-west-2.amazonaws.com
export DAPR_TAG=daprd-akotsar-test-5
export DAPR_SYSTEM_IMAGE_NAME=dapr-demo
export DAPR_RUNTIME_IMAGE_NAME=dapr-demo
export BINARIES=daprd
GOOS=linux GOARCH=amd64 make build
# make docker-build
make docker-push