#!/usr/bin/env bash

tf-init() {
	terraform init "$@"
}

tf-providers-lock() {
	terraform providers lock -platform=linux_amd64 -platform=linux_arm64 -platform=windows_amd64
}

tf-plan() {
	terraform plan "$@"
}

tf-apply() {
	terraform apply "$@"
}

tf-debug-enable() {
	export TF_LOG=debug
}

tf-debug-disable() {
	unset TF_LOG
}
