# ubuntu-minimal-image

## dependency

```
$ sudo apt-get ubuntu-vm-builder
```

## setup

```
$ git clone https://github.com/t-iwano/ubuntu-minimal-image
$ cd ubuntu-minimal-image/${version}
```

## building 14.04

```
$ sudo ubuntu-vm-builder kvm -c ./vmbuilder.cfg --part vmbuilder.partition
```

