# AlpineWSL
Alpine Linux on WSL (Windows 10 1803 or later)
based on [wsldl](https://github.com/yuk7/wsldl)

![screenshot](https://raw.githubusercontent.com/wiki/yuk7/wsldl/img/Alpine_Arch_Cent.png)

[![GitHub Workflow Status](https://img.shields.io/github/workflow/status/yuk7/AlpineWSL/Build%20Zip%20CI?style=flat-square)](https://github.com/yuk7/AlpineWSL/actions/workflows/build-zip.yaml)
[![Github All Releases](https://img.shields.io/github/downloads/yuk7/AlpineWSL/total.svg?style=flat-square)](https://github.com/yuk7/AlpineWSL/releases/latest)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](http://makeapullrequest.com)
![License](https://img.shields.io/github/license/yuk7/AlpineWSL.svg?style=flat-square)

### [Download](https://github.com/yuk7/AlpineWSL/releases/latest)


## Requirements
* Windows 10 1803 April 2018 Update x64/arm64 or later.
* Windows Subsystem for Linux feature is enabled.

## Install
#### 1. [Download](https://github.com/yuk7/AlpineWSL/releases/latest) installer zip

#### 2. Extract all files in zip file to same directory

#### 3.Run Alpine.exe to Extract rootfs and Register to WSL
Exe filename is using to the instance name to register.
If you rename it, you can register with a different name and have multiple installs.


## How-to-Use(for Installed Instance)
#### exe Usage
```dos
Usage :
    <no args>
      - Open a new shell with your default settings.

    run <command line>
      - Run the given command line in that instance. Inherit current directory.

    runp <command line (includes windows path)>
      - Run the given command line in that instance after converting its path.

    config [setting [value]]
      - `--default-user <user>`: Set the default user of this instance to <user>.
      - `--default-uid <uid>`: Set the default user uid of this instance to <uid>.
      - `--append-path <true|false>`: Switch of Append Windows PATH to $PATH
      - `--mount-drive <true|false>`: Switch of Mount drives
      - `--default-term <default|wt|flute>`: Set default type of terminal window.

    get [setting]
      - `--default-uid`: Get the default user uid in this instance.
      - `--append-path`: Get true/false status of Append Windows PATH to $PATH.
      - `--mount-drive`: Get true/false status of Mount drives.
      - `--wsl-version`: Get the version os the WSL (1/2) of this instance.
      - `--default-term`: Get Default Terminal type of this instance launcher.
      - `--lxguid`: Get WSL GUID key for this instance.

    backup [contents]
      - `--tar`: Output backup.tar to the current directory.
      - `--reg`: Output settings registry file to the current directory.

    clean
      - Uninstall that instance.

    help
      - Print this usage message.
```


#### How to uninstall instance
```dos
>Alpine.exe clean

```

## How-to-Build
AlpineWSL can build on GNU/Linux or WSL.

`curl`,`bsdtar`,`tar`(gnu) and `sudo` is required for build.
```shell
$ make
```

with flags:
```
$ make ARCH=arm64 OUT_ZIP=Alpine_arm64.zip
```

### Basic Params
|  Parameter |  Value  |  Default  |
| ---- | ---- | ---- |
|  ARCH  |  x64/arm64  | x64 |
|  LNCR_EXE  |  launcher file name  | Alpine.exe |
|  OUT_ZIP  |  zip file name  | Alpine.zip |
|  DLR  |  file downloader  | curl |
|  DLR_FLAGS  |  downloader flags  | -L |
|  BASE_URL  |  base rootfs url  | https:~ |
