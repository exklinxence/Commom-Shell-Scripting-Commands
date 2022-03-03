###How to check os version in Linux command lineoli@bert:/$ apt-cache policy firefox
firefox:
  Installed: 8.0+build1-0ubu

cat /etc/os-release
# Sample Output
# NAME="Amazon Linux"
# VERSION="2"
# ID="amzn"
# ID_LIKE="centos rhel fedora"
# VERSION_ID="2"
# PRETTY_NAME="Amazon Linux 2"
# ANSI_COLOR="0;33"
# CPE_NAME="cpe:2.3:o:amazon:amazon_linux:2"
# HOME_URL="https://amazonlinux.com/"
# [ec2-user@ip-10-0-1-101 ~]$ 


lsb_release -a
# Sample Output
# LSB Version:	:core-4.1-amd64:core-4.1-noarch
# Distributor ID:	CentOS
# Description:	CentOS Linux release 7.4.1708 (Core) 
# Release:	7.4.1708
# Codename:	Core

hostnamectl
# Sample Output
# [ec2-user@ip-10-0-1-101 ~]$ hostnamectl
#    Static hostname: ip-10-0-1-101.ec2.internal
#          Icon name: computer-vm
#            Chassis: vm
#         Machine ID: 76eebd95ccd443f99dc4115870aaa883
#            Boot ID: bbfc93413b7b434594cea7eac4c464af
#     Virtualization: xen
#   Operating System: Amazon Linux 2
#        CPE OS Name: cpe:2.3:o:amazon:amazon_linux:2
#             Kernel: Linux 5.10.96-90.460.amzn2.x86_64
#       Architecture: x86-64
# [ec2-user@ip-10-0-1-101 ~]$ 

### Check if a software is already installed
apt-cache policy firefox
## Sample output for installed application
# firefox:
#   Installed: (none)
#   Candidate: 75.0+build3-0ubuntu1
#   Version table:
#      79.0+build1-0ubuntu0.20.04.1 -1
#         100 /var/lib/dpkg/status
#      75.0+build3-0ubuntu1 500
#         500 http://archive.ubuntu.com/ubuntu focal/main amd64 Packages

##Sample output not installed
# jenkins:
#   Installed: (none)
#   Candidate: (none)
#   Version table:

##dpkg: dpkg -l | grep -E '^ii' | grep <package name>. When it's not installed it won't show output. When it is, it'll show something like:





