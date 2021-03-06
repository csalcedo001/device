# Device

Device connection manager.

## Installation

```
brew tap csalcedo001/formulas
brew install device
```

## Quickstart

```
dv add ssh <device_name> <username>@<IP>
dv connect <device_name>
```

The console will prompt for authentication. After that, you are all set!

## Guide

### Add a device

Add a new device with the `add` subcommand. There are two types of device connections: ssh and docker. Both types share a common required parameter: the name of the device.

#### Add ssh connection

An device connected through ssh additionally requires an IP to establish a remote connection. Support for multiple IPs is also given when a chain of ssh connections is desired.

```
dv add ssh <name> <IP> [<IP> ...]
```

#### Add docker connection

A docker connection requires the container's name to start an interactive session. In the case the container doesn't exist, a new container is created following the image `ubuntu:latest`.


```
dv add docker <name> <container_name>
```

### View available devices

To see the list of saved devices use the `ls` subcommand.

```
dv ls
```

A list of devices identified by their names is presented.

### View information from a device

Access information for a given device by calling:

```
dv info <name> <attribute>
```

where `attribute` is a key that identifies the attribute for some device named `name`. To list all available attributes for some device, set call `dv info <name> attributes`.

### Remove a device

If a connection needs to be removed, use the `rm` subcommand and give the name of the device as a parameter.

```
dv rm <name>
```

### Connect to device

When you are ready to connect to a device, use the `connect` subcommand and provide the name of the device.

```
dv connect <name>
```

### Copy files across devices

Copy files from and to devices with the following command:

```
dv cp <source> <dest>
```

where `source` and `dest` can be regular paths or have the form `<device_name>:<path>` to access files in the device.
