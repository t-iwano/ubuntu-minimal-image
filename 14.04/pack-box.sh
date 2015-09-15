#!/bin/bash
#
# requires:
#  bash
#
set -e

declare version=$1
declare file_size=$2

version=${version:-3}
file_size=${file_size:-30}
qcow2_file=$(ls ubuntu-kvm | grep .qcow2)
time qemu-img convert -O raw ubuntu-kvm/${qcow2_file} ubuntu-14.04.${version}-${file_size}g.raw
time tar zScvf ubuntu-14.04.${version}-${file_size}g.kvm.box ubuntu-14.04.${version}-${file_size}g.raw
