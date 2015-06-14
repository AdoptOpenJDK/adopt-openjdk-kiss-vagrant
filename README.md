# AdoptOpenJDK - Vagrant
# adopt-openjdk-kiss-vagrant

After attending a few hack days and seeing people take their first steps with AdoptOpenJDK. I thought I would review enviroment setup and strip it back to core and see if that is easier for people.

### Quick Start
The sections in this document are below, all the bullet points are steps required, all **bold** sections provided more information or optional configuration. **Any reference to $ is a comment line argument to be executed within a vagrant vm. **

  - Install Virtual Box, Vagrant & Git
  - Clone Adopt-OpenJDK-Kiss-Vagrant
  - Boot Vagrant VM
  - Initial Vagrant VM setup
  - OpenJDK 9 Build

## Install Virtual Box, Vagrant & Git
Install the software, initially created and tested on a Mac and the versions used as of 2015/01/18 are;
  - Virtual Box v4.3.20 (https://www.virtualbox.org/wiki/Downloads)
  - Vagrant v1.7.1 (https://www.vagrantup.com/downloads.html)
  - Git v2.2.2 (http://git-scm.com/downloads)

## Clone Adopt-OpenJDK-Kiss-Vagrant
Clone the git repository containing the vagrant files and scripts required.
  - git clone https://github.com/nhojpatrick/adopt-openjdk-kiss-vagrant.git

## Boot Vagrant VM
The vagrant setup is configured to use the official Ubuntu 14.10 64bit vagrant box provided by Ubuntu. So not a specially customised preconfigured vm. The main reason to this as the base, it that it's up to date, has an proven and tested openjdk-8 installation so no need to built it yourself.

**Before starting feel free to edit the Vagrantfile if your machine has more than 1 cpu and 512MB avaliable. When developing I used 2 cpus and 2048 memory. On 1st boot it will automatically download the vm image which is roughly 350MB. **

```
  $ vagrant up
  $ vagrant ssh
```

##### Troubleshooting
If the virtual machine boots but you see apt errors. Try logging in aka <code>vagrant ssh</code> and then execute <code>$ sudo /vagrant/scripts/aptget-deps.sh</code>. This is the main reason it's a seperate script so can be manually re-executed if required.

Windows users will need to skip <code>vagrant ssh</code> and once the vm has booted scan the output to see what port it being used for ssh and use putty to login.

## Initial Vagrant VM setup
Once the vm has booted and dependencies have been installed the next script will download the latest version of jdk9, if already cloned it will update so multiple execute is handled.

```
  $ vagrant ssh
  $ sh /vagrant/scripts/source-share-with-host.sh
```

## OpenJDK 9 Build
```
  $ vagrant ssh
  $ cd /vagrant/sources/jdk9
  $ bash get_source.sh
  $ bash configure --disable-warnings-as-errors
  $ make test ;
```

## OpenJDK 9 Build debug mode
```
  $ vagrant ssh
  $ cd /vagrant/sources/jdk9
  $ bash get_source.sh
  $ make clean images LOG=debug
```
## Scripts and their lifecycle

#### Vagrant supporting scripts
<b>Note:</b> before these block of scripts can be used, the above steps need to be executed and be successful. They are enlisted in the order they should be used.
```
   createBoxFromVagrantImage.sh - once a vagrant box is available this command can be used to create a package for portability of the box (by default uses a fixed name for the box)
   createTarGZipFromFolder.sh       - create a zip file from current folder to copy to another machine (exclude .git/*, sources/*, and Vagrant-* files and folders)
   destoryCreatedBox.sh         - detroys and removed the fixed-name box from the vagrant repo
   loadboxFromBoxInFolder.sh    - when a portable box is available we can load it and add it to the vagrant repo with this script (by default expects to find the fixed-name box in the same folder), depends on the success of createBoxFromVagrantImage.sh
   sshIntoBoxInThisFolder.sh    - ssh into the fixed name box loaded previously, depends on the success of createBoxFromVagrantImage.sh
   shutdownBoxInThisFolder.sh   - shutdown the fixed name box loaded previously, depends on the success of createBoxFromVagrantImage.sh
```

#### OpenJDK build supporting scripts
<b>Note:</b> these block of scripts help in building OpenJDK.
```
   scripts/aptget-deps.sh            - installs all the necessary dependencies to build OpenJDK9
   scripts/source-common.sh          - called by scripts/source-only-in-guest.sh and scripts/source-share-with-host.sh
   scripts/source-only-in-guest.sh   - selects the '/home' folder on the vagrant vm to install OpenKJDK9 sources
   scripts/source-share-with-host.sh - selects the '/vagrant/' folder on the vagrant vm to install OpenKJDK9 sources, /vagrant/ is shared from both guest and host OS for read/write/view purposes
   
   scripts/test.sh - partially complete script to setup the environment to run JTReg tests
   
   scripts/configureAndBuildOpenJDKOnly.sh   - only configure the environment and builds openjdk (make images)
   scripts/updateAndBuildOpenJDK.sh          - updates sources and builds openjdk (make images)
   scripts/updateAndCleanBuildOpenJDK.sh     - updates sources and clean builds openjdk (make clean images)
   scripts/updateBuildAndTestOpenJDK.sh      - updates sources, builds openjdk (make images) and runs all the tests
   scripts/updateCleanBuildAndTestOpenJDK.sh - updates sources, clean builds openjdk (make clean images) and runs all the tests

```
