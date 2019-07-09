#!/usr/bin/env sh

base="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
. "${base}/env.sh"

version_file="${base}/../.version"

version=$(cat ${version_file} | head -n1)

local_output_dir="${base}/.build_output"

BINARY_NAME=terraform-provisioner-ansible

RELEASE_VERSION="v${version}"

cp ${local_output_dir}/${BINARY_NAME}-$(uname -s | awk '{print tolower($0)}')-amd64_${RELEASE_VERSION} ~/.terraform.d/plugins/terraform-provisioner-ansible_v2.2.1
