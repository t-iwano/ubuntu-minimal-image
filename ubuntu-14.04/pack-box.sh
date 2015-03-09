#!/bin/bash
#
# requires:
#  bash
#
set -e

qcow2_file=$(ls ubuntu-kvm | grep .qcow2)
time qemu-img convert -O raw ubuntu-kvm/${qcow2_file} ubuntu-14.04-30g.raw
time tar zScvf ubuntu-14.04-30g.kvm.box ubuntu-14.04-30g.raw
