#!/usr/bin/env bash

set -euo pipefail

if (( "${#@}" != 1 )) ; then
	echo "Usage: $0 <release_ver>"
	exit 1
fi
ver="$1"

scp bazel-out/linux_amd64_musl-opt/bin/dist.tar.xz shortbus.org:www/clang-static-toolchain/clang-x86_64-linux-static-18.1.2-${ver}.tar.xz
scp bazel-out/linux_arm64_musl-opt/bin/dist.tar.xz shortbus.org:www/clang-static-toolchain/clang-aarch64-linux-static-18.1.2-${ver}.tar.xz
scp bazel-out/darwin_arm64-opt/bin/dist.tar.xz shortbus.org:www/clang-static-toolchain/clang-aarch64-darwin-static-18.1.2-${ver}.tar.xz
scp bazel-out/darwin_amd64-opt/bin/dist.tar.xz shortbus.org:www/clang-static-toolchain/clang-x86_64-darwin-static-18.1.2-${ver}.tar.xz
