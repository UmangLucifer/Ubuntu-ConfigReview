# Type - Configuration Review Audit Script
# Author - Umang Verma
# Application Name - Ubuntu
#!/bin/bash

check_file(){
	x="$t"
	if [ ! -f $x ]; then
		echo "File $x not found"
	fi
}

echo "Audit script for Ubuntu is running. Kindly wait for the script to terminate."


exec > `hostname`_FileSystem.txt 2>errors1.txt

echo "LIN_00 - System Information"
hostname
/sbin/ifconfig -a|grep "inet addr"



echo ""
echo ""


echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo "..............................................FILE SYSTEM CONFIGURATION.................................."
echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo "*********************************************************************************************************"

echo "UBTU_16.04_1.1 Ensure mounting of cramfs filesystems is disabled"
modprobe -n -v cramfs 2>/dev/null
t=$_
check_file $t
lsmod | grep cramfs
t=$_
check_file $t
echo

echo "*********************************************************************************************************"
echo "*********************************************************************************************************"


echo "UBTU_16.04_1.2 Ensure mounting of freevxfs filesystems is disabled"
modprobe -n -v freevxfs 2>/dev/null
t=$_
check_file $t
lsmod | grep freevxfs
t=$_
check_file $t
echo



echo "*********************************************************************************************************"
echo "*********************************************************************************************************"



echo "UBTU_16.04_1.3. Ensure mounting of jffs2 filesystems is disabled"
modprobe -n -v jffs2 2>/dev/null
t=$_
check_file $t
lsmod | grep jffs2
t=$_
check_file $t
echo




echo "*********************************************************************************************************"
echo "*********************************************************************************************************"



echo "UBTU_16.04_1.4. Ensure mounting of hfs filesystems is disabled"
modprobe -n -v hfs 2>/dev/null
t=$_
check_file $t
lsmod | grep hfs
t=$_
check_file $t
echo



echo "*********************************************************************************************************"
echo "*********************************************************************************************************"



echo "UBTU_16.04_1.5. Ensure mounting of hfsplus filesystems is disabled"
modprobe -n -v hfsplus 2>/dev/null
t=$_
check_file $t
lsmod | grep hfsplus
t=$_
check_file $t
echo




echo "*********************************************************************************************************"
echo "*********************************************************************************************************"


echo "UBTU_16.04_1.6. Ensure mounting of squashfs filesystems is disabled"
modprobe -n -v squashfs 2>/dev/null
t=$_
check_file $t
lsmod | grep squashfs
t=$_
check_file $t
echo



echo "*********************************************************************************************************"
echo "*********************************************************************************************************"




echo "UBTU_16.04_1.7. Ensure mounting of udf filesystems is disabled"
modprobe -n -v udf 2>/dev/null
t=$_
check_file $t
lsmod | grep udf
t=$_
check_file $t
echo



echo "*********************************************************************************************************"
echo "*********************************************************************************************************"



echo "UBTU_16.04_1.8. Ensure mounting of FAT filesystems is disabled"
modprobe -n -v vfat 2>/dev/null
t=$_
check_file $t
lsmod | grep vfat
t=$_
check_file $t
echo




echo "*********************************************************************************************************"
echo "*********************************************************************************************************"



echo "UBTU_16.04_1.9. Ensure separate partition exists for /tmp"
mount | grep /tmp 2>/dev/null
t=$_
check_file $t
echo



echo "*********************************************************************************************************"
echo "*********************************************************************************************************"





echo "UBTU_16.04_1.10. Ensure nodev option set on /tmp partition"
mount | grep /tmp 2>/dev/null
t=$_
check_file $t
echo



echo "*********************************************************************************************************"
echo "*********************************************************************************************************"




echo "UBTU_16.04_1.11. Ensure nosuid option set on /tmp partition"
mount | grep /tmp 2>/dev/null
t=$_
check_file $t
echo




echo "*********************************************************************************************************"
echo "*********************************************************************************************************"





echo "UBTU_16.04_1.12. Ensure separate partition exists for /var"
mount | grep /var 2>/dev/null
t=$_
check_file $t
echo



echo "*********************************************************************************************************"
echo "*********************************************************************************************************"





echo "UBTU_16.04_1.13. Ensure separate partition exists for /var/tmp"
mount | grep /var/tmp 2>/dev/null
t=$_
check_file $t
echo



echo "*********************************************************************************************************"
echo "*********************************************************************************************************"





echo "UBTU_16.04_1.14. Ensure nodev option set on /var/tmp partition"
mount | grep /var/tmp 2>/dev/null
t=$_
check_file $t
echo


echo "*********************************************************************************************************"
echo "*********************************************************************************************************"





echo "UBTU_16.04_1.15. Ensure nosuid option set on /var/tmp partition"
mount | grep /var/tmp 2>/dev/null
t=$_
check_file $t
echo



echo "*********************************************************************************************************"
echo "*********************************************************************************************************"





echo "UBTU_16.04_1.16. Ensure noexec option set on /var/tmp partition"
mount | grep /var/tmp 2>/dev/null
t=$_
check_file $t
echo



echo "*********************************************************************************************************"
echo "*********************************************************************************************************"




echo "UBTU_16.04_1.17. Ensure separate partition exists for /var/log"
mount | grep /var/log 2>/dev/null
t=$_
check_file $t
echo



echo "*********************************************************************************************************"
echo "*********************************************************************************************************"



echo "UBTU_16.04_1.18. Ensure separate partition exists for /var/log/audit"
mount | grep /var/log/audit 2>/dev/null
t=$_
check_file $t
echo



echo "*********************************************************************************************************"
echo "*********************************************************************************************************"




echo "UBTU_16.04_1.19. Ensure separate partition exists for /home"
mount | grep /home 2>/dev/null
t=$_
check_file $t
echo



echo "*********************************************************************************************************"
echo "*********************************************************************************************************"




echo "UBTU_16.04_1.20. Ensure nodev option set on /home partition"
mount | grep /home 2>/dev/null
t=$_
check_file $t
echo




echo "*********************************************************************************************************"
echo "*********************************************************************************************************"





echo "UBTU_16.04_1.21. Ensure nodev option set on /dev/shm partition"
mount | grep /dev/shm 2>/dev/null
t=$_
check_file $t
echo



echo "*********************************************************************************************************"
echo "*********************************************************************************************************"





echo "UBTU_16.04_1.22. Ensure nosuid option set on /dev/shm partition"
mount | grep /dev/shm 2>/dev/null
t=$_
check_file $t
echo



echo "*********************************************************************************************************"
echo "*********************************************************************************************************"




echo "UBTU_16.04_1.23. Ensure noexec option set on /dev/shm partition"
mount | grep /dev/shm 2>/dev/null
t=$_
check_file $t
echo



echo "*********************************************************************************************************"
echo "*********************************************************************************************************"




echo "UBTU_16.04_1.24. Ensure nodev option set on removable media partitions"
mount 2>/dev/null
t=$_
check_file $t
echo



echo "*********************************************************************************************************"
echo "*********************************************************************************************************"





echo "UBTU_16.04_1.25. Ensure nosuid option set on removable media partitions"
mount 2>/dev/null
t=$_
check_file $t
echo




echo "*********************************************************************************************************"
echo "*********************************************************************************************************"





echo "UBTU_16.04_1.26. Ensure noexec option set on removable media partitions"
mount 2>/dev/null
t=$_
check_file $t
echo


echo "*********************************************************************************************************"
echo "*********************************************************************************************************"





echo "UBTU_16.04_1.27. Ensure sticky bit is set on all world-writable directories"
df --local -P | awk {'if (NR!=1) print $6'} | xargs -I '{}' find '{}' -xdev -type d \( -perm -0002 -a ! -perm -1000 \) 2>/dev/null
t=$_
check_file $t
echo




echo "*********************************************************************************************************"
echo "*********************************************************************************************************"






echo "UBTU_16.04_1.28. Disable Automounting"
systemctl is-enabled autofs 2>/dev/null
t=$_
check_file $t
echo


echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo ".................................Configure Software Update......................................"
echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo "UBTU_16.04_2.1. Ensure package manager repositories are configured"
apt-cache policy 2>/dev/null
t=$_
check_file $t
echo
echo "------------------------------"


echo "UBTU_16.04_2.1. Ensure GPG keys are configured"
apt-key list 2>/dev/null
t=$_
check_file $t
echo
echo "------------------------------"







echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo "..................................File system Integrity Check..................................."
echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo "UBTU_16.04_3.1. Ensure AIDE is installed"
dpkg -s aide 2>/dev/null
t=$_
check_file $t
echo


echo "*********************************************************************************************************"
echo "*********************************************************************************************************"


echo "UBTU_16.04_3.2. Ensure filesystem integrity is regularly checked"
crontab -u root -l | grep aide 2>/dev/null
t=$_
check_file $t
grep -r aide /etc/cron.* /etc/crontab
t=$_
check_file $t
echo


echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo "................................Secure Boot Settings ........................................."
echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo "*********************************************************************************************************"


echo "UBTU_16.04_2.1. Ensure permissions on bootloader config are configured"
stat /boot/grub/grub.cfg 2>/dev/null
t=$_
check_file $t
echo


echo "*********************************************************************************************************"
echo "*********************************************************************************************************"




echo "UBTU_16.04_2.2. Ensure bootloader password is set"
grep "^set superusers" /boot/grub/grub.cfg 2>/dev/null
t=$_
check_file $t
grep "^password" /boot/grub/grub.cfg
t=$_
check_file $t
echo


echo "*********************************************************************************************************"
echo "*********************************************************************************************************"




echo "UBTU_16.04_2.3. Ensure authentication required for single user mode"
grep ^root:[*\!]: /etc/shadow 2>/dev/null
t=$_
check_file $t
echo



echo "*********************************************************************************************************"
echo "*********************************************************************************************************"




echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo "..................................Additional Process Hardening................................"
echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo "*********************************************************************************************************"



echo "UBTU_16.04_3.1. Ensure core dumps are restricted"
grep "hard core" /etc/security/limits.conf /etc/security/limits.d/* 2>/dev/null
t=$_
check_file $t
sysctl fs.suid_dumpable
t=$_
check_file $t
echo



echo "*********************************************************************************************************"
echo "*********************************************************************************************************"






echo "UBTU_16.04_3.2. Ensure XD/NX support is enabled"
dmesg | grep NX 2>/dev/null
t=$_
check_file $t
echo



echo "*********************************************************************************************************"
echo "*********************************************************************************************************"




echo "UBTU_16.04_3.3. Ensure address space layout randomization (ASLR) is enabled"
sysctl kernel.randomize_va_space 2>/dev/null
t=$_
check_file $t
echo


echo "*********************************************************************************************************"
echo "*********************************************************************************************************"




echo "UBTU_16.04_4.4. Ensure prelink is disabled"
dpkg -s prelink 2>/dev/null
t=$_
check_file $t
echo


echo "*********************************************************************************************************"
echo "*********************************************************************************************************"


echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo ".....................................Mandatory Access Control..................................."
echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo "*********************************************************************************************************"


echo "UBTU_16.04_5.1. Ensure SELinux is not disabled in bootloader configuration"
grep "^\s*linux" /boot/grub/grub.cfg 2>/dev/null
t=$_
check_file $t
echo



echo "*********************************************************************************************************"
echo "*********************************************************************************************************"




echo "UBTU_16.04_5.2. Ensure the SELinux state is enforcing"
grep SELINUX=enforcing /etc/selinux/config 2>/dev/null
t=$_
check_file $t
sestatus
t=$_
check_file $t
echo



echo "*********************************************************************************************************"
echo "*********************************************************************************************************"





echo "UBTU_16.04_5.3. Ensure SELinux policy is configured"
grep SELINUXTYPE= /etc/selinux/config 2>/dev/null
t=$_
check_file $t
sestatus
t=$_
check_file $t
echo



echo "*********************************************************************************************************"
echo "*********************************************************************************************************"




echo "UBTU_16.04_5.4. Ensure no unconfined daemons exist"
ps -eZ | egrep "initrc" | egrep -vw "tr|ps|egrep|bash|awk" | tr ':' ' ' | awk '{ print $NF }' 2>/dev/null
t=$_
check_file $t
echo



echo "*********************************************************************************************************"
echo "*********************************************************************************************************"




echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo ".....................................Configure AppArmor........................................."
echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo "*********************************************************************************************************"


echo "UBTU_16.04_6.1. Ensure AppArmor is not disabled in bootloader configuration"
grep "^\s*linux" /boot/grub/grub.cfg 2>/dev/null
t=$_
check_file $t
echo



echo "*********************************************************************************************************"
echo "*********************************************************************************************************"


echo "UBTU_16.04_6.2. Ensure all AppArmor Profiles are enforcing"
apparmor_status 2>/dev/null
t=$_
check_file $t
echo



echo "*********************************************************************************************************"
echo "*********************************************************************************************************"





echo "UBTU_16.04_6.3. Ensure SELinux or AppArmor are installed"
dpkg -s selinux 2>/dev/null
t=$_
check_file $t
dpkg -s apparmor
t=$_
check_file $t
echo


echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo "...............................................Warning Banners..................................."
echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo "*********************************************************************************************************"



echo "UBTU_16.04_7.1. Ensure message of the day is configured properly"
cat /etc/motd 2>/dev/null
t=$_
check_file $t
egrep '(\\v|\\r|\\m|\\s)' /etc/motd
t=$_
check_file $t
echo



echo "*********************************************************************************************************"
echo "*********************************************************************************************************"


echo "UBTU_16.04_7.2. Ensure local login warning banner is configured properly"
cat /etc/issue 2>/dev/null
t=$_
check_file $t
egrep '(\\v|\\r|\\m|\\s)' /etc/issue
t=$_
check_file $t
echo




echo "*********************************************************************************************************"
echo "*********************************************************************************************************"




echo "UBTU_16.04_7.3. Ensure remote login warning banner is configured properly"
cat /etc/issue.net 2>/dev/null
t=$_
check_file $t
egrep '(\\v|\\r|\\m|\\s)' /etc/issue.net
t=$_
check_file $t
echo




echo "*********************************************************************************************************"
echo "*********************************************************************************************************"




echo "UBTU_16.04_7.4. Ensure permissions on /etc/motd are configured"
stat /etc/motd 2>/dev/null
t=$_
check_file $t
echo




echo "*********************************************************************************************************"
echo "*********************************************************************************************************"




echo "UBTU_16.04_7.5. Ensure permissions on /etc/issue are configured"
stat /etc/issue 2>/dev/null
t=$_
check_file $t
echo




echo "*********************************************************************************************************"
echo "*********************************************************************************************************"






echo "UBTU_16.04_7.6. Ensure permissions on /etc/issue.net are configured"
stat /etc/issue.net 2>/dev/null
t=$_
check_file $t
echo




echo "*********************************************************************************************************"
echo "*********************************************************************************************************"



echo "UBTU_16.04_7.7. Ensure GDM login banner is configured"
cat /etc/dconf/profile/gdm 2>/dev/null
t=$_
check_file $t
cat /etc/dconf/db/gdm.d/01-banner-message
t=$_
check_file $t
echo



echo "*********************************************************************************************************"
echo "*********************************************************************************************************"



echo "UBTU_16.04_7.8. Ensure updates, patches, and additional security software are installed"

apt-get -s upgrade 2>/dev/null
t=$_
check_file $t
echo


echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo ".............................................END OF OUTPUT..............................................."
echo "*********************************************************************************************************"
echo "*********************************************************************************************************"