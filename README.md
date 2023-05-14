# Bash Scripts v0.1.0

Usefull scripts for use in bash shell/terminal.

## 1: Lib scripts

Script to be used as system programs.

### 1.1: update.sh

Script updates system, using **apt** or **pacman** package manager.

```bash
$ ./lib/update.sh
```

## 2: Tools scripts

Scripts used as repo tools.

### 2.1: scinst.sh

Install script from **lib** directory

```bash
$ ./tools/scinst.sh <SCRIPT> <DIRECTORY>
```

* SCRIPT - required, script from **lib** directory to be installed
* DIRECTORY - optional, target directory where script will be installed, default: /usr/local/bin

### 2.2: scsinit.sh

Make all files in directory executable.

```bash
$ ./tools/scsinit.sh <DIRECTORY>
```

* DIRECTORY - required, valid directory in which all files will be made executable.

## 3: Util script

Script containing helpful code used accross multiple other scripts.

### 3.1: util.sh

Script containing helpful code used accross multiple other scripts.

## 4: License

[MIT](https://github.com/mmarkovic85/bash-scripts/blob/main/LICENSE)

## 5: Version History

v0.1.0

* lib
    * implemented update.sh
* tools
    * implemented scinst.sh
    * implemented scsinit.sh
