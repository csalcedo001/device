# Device connection manager

## Installation

1. Clone the repository to the location of your preference

```
git clone https://github.com/csalcedo001/device.git
```

2. Add the path to the repository to your `.bash_profile` or `.bashrc` files.

## Quickstart

```
device add ssh <name> <IP>
device connect <name>
```

## Guide

### Add a device

Add a new device with the `add` subcommand. There are two types of device connections: ssh and docker. Both type require share a common required parameter: name.

#### Add ssh connection

An ssh connection additionally requires an IP to establish a remote connection. Support for multiple IPs is also given when a chain of ssh connections is required.

```
device add ssh <name> <IP> [<IP> ...]
```

#### Add docker connection

A docker connection requires the container name to start an interactive session. In the case the container doesn't exist, a new container is created with the image `ubuntu:latest`.


```
device add docker <name> <container_name>
```

### View available devices

To see the list of saved devices use the `ls` subcommand.

```
device ls
```

A list of devices identified by its names is presented.

### Remove a device

If a connection needs to be removed, use the `rm` subcommand.

```
device rm <name>
```

### Connect to device

When you are ready to connect to a device you just need to use the `connect` subcommand and provide the name of the device.

```
device connect <name>
```
