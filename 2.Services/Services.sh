# Type - Configuration Audit Script
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

exec > `hostname`_Services.txt 2>errors2.txt

echo "LIN_00 - System Information"
hostname
/sbin/ifconfig -a|grep "inet addr"

echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo ".............................................Services............................................."
echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo ".................................................inetd Services...................................."
echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo "UBTU_16.04_2.1.1 Ensure chargen services are not enabled"

grep -R "^chargen" /etc/inetd.* 2>/dev/null
t=$_
check_file $t
echo



echo "*********************************************************************************************************"
echo "*********************************************************************************************************"



echo "UBTU_16.04_2.1.2. Ensure daytime services are not enabled"
grep -R "^daytime" /etc/inetd.* 2>/dev/null
t=$_
check_file $t
echo


echo "*********************************************************************************************************"
echo "*********************************************************************************************************"




echo "UBTU_16.04_2.1.3. Ensure discard services are not enabled"

grep -R "^discard" /etc/inetd.* 2>/dev/null
t=$_
check_file $t
echo



echo "*********************************************************************************************************"
echo "*********************************************************************************************************"



echo "UBTU_16.04_2.1.4. Ensure echo services are not enabled"

grep -R "^echo" /etc/inetd.* 2>/dev/null
t=$_
check_file $t
echo



echo "*********************************************************************************************************"
echo "*********************************************************************************************************"






echo "UBTU_16.04_2.1.5. Ensure time services are not enabled"
grep -R "^time" /etc/inetd.* 2>/dev/null
t=$_
check_file $t
echo


echo "*********************************************************************************************************"
echo "*********************************************************************************************************"





echo "UBTU_16.04_2.1.6. Ensure rsh server is not enabled"

grep -R "^shell" /etc/inetd.*2>/dev/null
t=$_
check_file $t
grep -R "^login" /etc/inetd.*
t=$_
check_file $t
grep -R "^exec" /etc/inetd.*
t=$_
check_file $t
echo



echo "*********************************************************************************************************"
echo "*********************************************************************************************************"






echo "UBTU_16.04_2.1.7. Ensure talk server is not enabled"

grep -R "^talk" /etc/inetd.* 2>/dev/null
t=$_
check_file $t
grep -R "^ntalk" /etc/inetd.*
t=$_
check_file $t
echo


echo "*********************************************************************************************************"
echo "*********************************************************************************************************"


echo "UBTU_16.04_2.1.8. Ensure telnet server is not enabled"
grep -R "^telnet" /etc/inetd.* 2>/dev/null
t=$_
check_file $t
echo



echo "*********************************************************************************************************"
echo "*********************************************************************************************************"





echo "UBTU_16.04_2.1.9. Ensure tftp server is not enabled"
grep -R "^tftp" /etc/inetd.* 2>/dev/null
t=$_
check_file $t
echo


echo "*********************************************************************************************************"
echo "*********************************************************************************************************"






echo "UBTU_16.04_2.1.10. Ensure xinetd is not enabled"
systemctl is-enabled xinetd 2>/dev/null
t=$_
check_file $t
echo



echo "*********************************************************************************************************"
echo "*********************************************************************************************************"





echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo ".............................................Special Purpose Services............................."
echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo "*********************************************************************************************************"

echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo ".........................................Time Synchronization......................................"

echo "*********************************************************************************************************"
echo "*********************************************************************************************************"

echo "UBTU_16.04_2.2.1.1. Ensure time synchronization is in use"
dpkg -s ntp 2>/dev/null
t=$_
check_file $t
dpkg -s chrony
t=$_
check_file $t
echo



echo "*********************************************************************************************************"
echo "*********************************************************************************************************"


echo "UBTU_16.04_2.2.1.2 Ensure ntp is configured"
grep "^restrict" /etc/ntp.conf 2>/dev/null
t=$_
check_file $t
grep "^server" /etc/ntp.conf
t=$_
check_file $t
grep "RUNASUSER=ntp" /etc/init.d/ntp
t=$_
check_file $t
echo



echo "*********************************************************************************************************"
echo "*********************************************************************************************************"

echo "UBTU_16.04_2.2.1.3. Ensure chrony is configured"
grep "^server" /etc/chrony/chrony.conf 2>/dev/null
t=$_
check_file $t
ps -ef | grep chronyd
t=$_
check_file $t
echo



echo "*********************************************************************************************************"
echo "*********************************************************************************************************"


echo "UBTU_16.04_2.2.2. Ensure X Window System is not installed"
dpkg -l xserver-xorg* 2>/dev/null
t=$_
check_file $t
echo




echo "*********************************************************************************************************"
echo "*********************************************************************************************************"


echo "UBTU_16.04_2.2.3. Ensure Avahi Server is not enabled"
systemctl is-enabled avahi-daemon 2>/dev/null
t=$_
check_file $t
echo




echo "*********************************************************************************************************"
echo "*********************************************************************************************************"


echo "UBTU_16.04_2.2.4. Ensure CUPS is not enabled"
systemctl is-enabled cups 2>/dev/null
t=$_
check_file $t
echo



echo "*********************************************************************************************************"
echo "*********************************************************************************************************"



echo "UBTU_16.04_2.2.5. Ensure DHCP Server is not enabled"
systemctl is-enabled isc-dhcp-server 2>/dev/null
t=$_
check_file $t
systemctl is-enabled isc-dhcp-server6
t=$_
check_file $t
echo



echo "*********************************************************************************************************"
echo "*********************************************************************************************************"





echo "UBTU_16.04_2.2.6. Ensure LDAP server is not enabled"
systemctl is-enabled slapd 2>/dev/null
t=$_
check_file $t
echo




echo "*********************************************************************************************************"
echo "*********************************************************************************************************"




echo "UBTU_16.04_2.2.7. Ensure NFS and RPC are not enabled"
systemctl is-enabled nfs-kernel-server 2>/dev/null
t=$_
check_file $t
systemctl is-enabled rpcbind
t=$_
check_file $t
echo



echo "*********************************************************************************************************"
echo "*********************************************************************************************************"



echo "UBTU_16.04_2.2.8. Ensure DNS Server is not enabled"
systemctl is-enabled bind9 2>/dev/null
t=$_
check_file $t
echo



echo "*********************************************************************************************************"
echo "*********************************************************************************************************"


echo "UBTU_16.04_2.2.9. Ensure FTP Server is not enabled"
systemctl is-enabled vsftpd 2>/dev/null
t=$_
check_file $t
echo



echo "*********************************************************************************************************"
echo "*********************************************************************************************************"



echo "UBTU_16.04_2.2.10. Ensure HTTP server is not enabled"
systemctl is-enabled apache2 2>/dev/null
t=$_
check_file $t
echo



echo "*********************************************************************************************************"
echo "*********************************************************************************************************"





echo "UBTU_16.04_2.2.11. Ensure IMAP and POP3 server is not enabled"
systemctl is-enabled dovecot 2>/dev/null
t=$_
check_file $t
echo




echo "*********************************************************************************************************"
echo "*********************************************************************************************************"




echo "UBTU_16.04_2.2.12. Ensure Samba is not enabled"
systemctl is-enabled smbd 2>/dev/null
t=$_
check_file $t
echo



echo "*********************************************************************************************************"
echo "*********************************************************************************************************"



echo "UBTU_16.04_2.2.13. Ensure HTTP Proxy Server is not enabled"
systemctl is-enabled squid 2>/dev/null
t=$_
check_file $t
echo



echo "*********************************************************************************************************"
echo "*********************************************************************************************************"




echo "UBTU_16.04_2.2.14. Ensure SNMP Server is not enabled"
systemctl is-enabled snmpd 2>/dev/null
t=$_
check_file $t
echo



echo "*********************************************************************************************************"
echo "*********************************************************************************************************"





echo "UBTU_16.04_2.2.15. Ensure mail transfer agent is configured for local-only mode"
netstat -an | grep LIST | grep ":25[[:space:]]" 2>/dev/null
t=$_
check_file $t
echo



echo "*********************************************************************************************************"
echo "*********************************************************************************************************"




echo "UBTU_16.04_2.2.16. Ensure rsync service is not enabled"
systemctl is-enabled rsync 2>/dev/null
t=$_
check_file $t
echo


echo "*********************************************************************************************************"
echo "*********************************************************************************************************"



echo "UBTU_16.04_2.2.17. Ensure NIS Server is not enabled"
systemctl is-enabled nis 2>/dev/null
t=$_
check_file $t
echo



echo "*********************************************************************************************************"
echo "*********************************************************************************************************"



echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo ".........................................Service Clients................................"
echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo "*********************************************************************************************************"

echo "UBTU_16.04_2.3.1. Ensure NIS Client is not installed"
dpkg -s nis 2>/dev/null
t=$_
check_file $t
echo



echo "*********************************************************************************************************"
echo "*********************************************************************************************************"




echo "UBTU_16.04_2.3.2. Ensure rsh client is not installed"
dpkg -s rsh-client 2>/dev/null
t=$_
check_file $t
dpkg -s rsh-redone-client
t=$_
check_file $t
echo


echo "*********************************************************************************************************"
echo "*********************************************************************************************************"



echo "UBTU_16.04_2.3.3. Ensure talk client is not installed"
dpkg -s talk 2>/dev/null
t=$_
check_file $t
echo



echo "*********************************************************************************************************"
echo "*********************************************************************************************************"





echo "UBTU_16.04_2.3.4. Ensure telnet client is not installed"
dpkg -s telnet 2>/dev/null
t=$_
check_file $t
echo

echo "*********************************************************************************************************"
echo "*********************************************************************************************************"




echo "UBTU_16.04_2.3.5. Ensure LDAP client is not installed"
dpkg -s ldap-utils 2>/dev/null
t=$_
check_file $t
echo

echo "*********************************************************************************************************"
echo "*********************************************************************************************************"

echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo "........................................END OF OUTPUT...................................."
echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo "*********************************************************************************************************"