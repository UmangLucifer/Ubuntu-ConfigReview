#!/bin/bash
# Type - Configuration Audit Script
# Author - Umang Verma
# Application Name - Ubuntu

check_file(){
	x="$t"
	if [ ! -f $x ]; then
		echo "File $x not found"
	fi
}

echo "Audit script for Ubuntu is running. Kindly wait for the script to terminate."

exec > `hostname`_SystemMaintainance.txt 2>errors6.txt

echo "LIN_00 - System Information"
hostname
/sbin/ifconfig -a|grep "inet addr"

echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo "................................................SYSTEM MAINTENANCE...................................."
echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo " *********************************************System File Permissions********************************** "
echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo "*********************************************************************************************************"


#echo "UBTU_16.04_6.1.1 Audit system file permissions (Not Scored)"
#dpkg --verify > dpkgoutput.txt 2>/dev/null
#t=$_
#check_file $t
#echo




echo "*********************************************************************************************************"
echo "*********************************************************************************************************"



echo "UBTU_16.04_6.1.2 Ensure permissions on /etc/passwd are configured (Scored)"
stat /etc/passwd 2>/dev/null
t=$_
check_file $t
echo


echo "*********************************************************************************************************"
echo "*********************************************************************************************************"




echo "UBTU_16.04_6.1.3 Ensure permissions on /etc/shadow are configured (Scored)"
stat /etc/shadow 2>/dev/null
t=$_
check_file $t
echo



echo "*********************************************************************************************************"
echo "*********************************************************************************************************"


echo "UBTU_16.04_6.1.4 Ensure permissions on /etc/group are configured (Scored)"
stat /etc/group 2>/dev/null
t=$_
check_file $t
echo



echo "*********************************************************************************************************"
echo "*********************************************************************************************************"


echo "UBTU_16.04_6.1.5 Ensure permissions on /etc/gshadow are configured (Scored)"
stat /etc/gshadow 2>/dev/null
t=$_
check_file $t
echo


echo "*********************************************************************************************************"
echo "*********************************************************************************************************"

echo "UBTU_16.04_6.1.6 Ensure permissions on /etc/passwd- are configured (Scored)"
stat /etc/passwd- 2>/dev/null
t=$_
check_file $t
echo


echo "*********************************************************************************************************"
echo "*********************************************************************************************************"


echo "UBTU_16.04_6.1.7 Ensure permissions on /etc/shadow- are configured (Scored)"
stat /etc/shadow- 2>/dev/null
t=$_
check_file $t
echo


echo "*********************************************************************************************************"
echo "*********************************************************************************************************"


echo "UBTU_16.04_6.1.8 Ensure permissions on /etc/group- are configured (Scored)"
stat /etc/group- 2>/dev/null
t=$_
check_file $t
echo


echo "*********************************************************************************************************"
echo "*********************************************************************************************************"


echo "UBTU_16.04_6.1.9 Ensure permissions on /etc/gshadow- are configured (Scored)"
stat /etc/gshadow- 2>/dev/null
t=$_
check_file $t
echo



echo "*********************************************************************************************************"
echo "*********************************************************************************************************"


echo "UBTU_16.04_6.1.10 Ensure no world writable files exist (Scored)"
df --local -P | awk {'if (NR!=1) print $6'} | xargs -I '{}' find '{}' -xdev -type f -perm -0002 2>/dev/null
t=$_
check_file $t
find <partition> -xdev -type f -perm -0002 
t=$_
check_file $t
echo



echo "*********************************************************************************************************"
echo "*********************************************************************************************************"


echo "UBTU_16.04_6.1.11 Ensure no unowned files or directories exist (Scored)"
df --local -P | awk {'if (NR!=1) print $6'} | xargs -I '{}' find '{}' -xdev -nouser 2>/dev/null
t=$_
check_file $t
find <partition> -xdev -nouser 
t=$_
check_file $t
echo


echo "*********************************************************************************************************"
echo "*********************************************************************************************************"


echo "UBTU_16.04_6.1.12 Ensure no ungrouped files or directories exist (Scored)"
df --local -P | awk {'if (NR!=1) print $6'} | xargs -I '{}' find '{}' -xdev -nogroup 2>/dev/null
t=$_
check_file $t
find <partition> -xdev -nogroup 
t=$_
check_file $t
echo



echo "*********************************************************************************************************"
echo "*********************************************************************************************************"


echo "UBTU_16.04_6.1.13 Audit SUID executables (Not Scored)"
df --local -P | awk {'if (NR!=1) print $6'} | xargs -I '{}' find '{}' -xdev -type f -perm -4000 2>/dev/null
t=$_
check_file $t
find <partition> -xdev -type f -perm -4000 
t=$_
check_file $t
echo


echo "*********************************************************************************************************"
echo "*********************************************************************************************************"

echo "UBTU_16.04_6.1.14 Audit SGID executables (Not Scored)"
df --local -P | awk {'if (NR!=1) print $6'} | xargs -I '{}' find '{}' -xdev -type f -perm -2000 2>/dev/null
t=$_
check_file $t
find <partition> -xdev -type f -perm -2000 
t=$_
check_file $t
echo



echo "*********************************************************************************************************"
echo "*********************************************************************************************************"


echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo " ********************************************User and Group Settings**********************************"
echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo "UBTU_16.04_6.2.1 Ensure password fields are not empty (Scored)"
cat /etc/shadow | awk -F: '($2 == "" ) { print $1 " does not have a password "}' 2>/dev/null
t=$_
check_file $t
echo


echo "*********************************************************************************************************"
echo "*********************************************************************************************************"

echo "UBTU_16.04_6.2.2 Ensure no legacy "+" entries exist in /etc/passwd (Scored)"
grep '^+:' /etc/passwd 2>/dev/null
t=$_
check_file $t
echo



echo "*********************************************************************************************************"
echo "*********************************************************************************************************"


echo "UBTU_16.04_6.2.3 Ensure no legacy "+" entries exist in /etc/shadow (Scored)"
 grep '^+:' /etc/shadow 2>/dev/null
t=$_
check_file $t
echo


echo "*********************************************************************************************************"
echo "*********************************************************************************************************"


echo "UBTU_16.04_6.2.4 Ensure no legacy "+" entries exist in /etc/group (Scored)"
 grep '^+:' /etc/group 2>/dev/null
t=$_
check_file $t
echo


echo "*********************************************************************************************************"
echo "*********************************************************************************************************"


echo "UBTU_16.04_6.2.5 Ensure root is the only UID 0 account (Scored)"
 cat /etc/passwd | awk -F: '($3 == 0) { print $1 }' 2>/dev/null
t=$_
check_file $t
echo


echo "*********************************************************************************************************"
echo "*********************************************************************************************************"


echo "UBTU_16.04_6.2.6 Ensure root PATH Integrity (Scored)"
 #!/bin/bash
 if [ "`echo $PATH | grep :: `" != "" ]; then 
echo "Empty Directory in PATH (::)" 
fi 
if [ "`echo $PATH | grep :$`" != "" ]; then 
echo "Trailing : in PATH"
fi 
p=`echo $PATH | sed -e 's/::/:/' -e 's/:$//' -e 's/:/ /g'` set -- $p 
while [ "$1" != "" ]; do 
if [ "$1" = "." ]; then
echo "PATH contains ." 
shift 
continue 
fi 
if [ -d $1 ]; then 
dirperm=`ls -ldH $1 | cut -f1 -d" "` 
if [ `echo $dirperm | cut -c6 ` != "-" ]; then 
echo "Group Write permission set on directory $1" 
fi 
if [ `echo $dirperm | cut -c9 ` != "-" ]; then 
echo "Other Write permission set on directory $1"
 fi 
dirown=`ls -ldH $1 | awk '{print $3}'` 
if [ "$dirown" != "root" ] ; then 
echo $1 is not owned by root 
fi 
else
echo $1 is not a directory
fi 
shift 
done 2>/dev/null
t=$_
check_file $t
echo


echo "*********************************************************************************************************"
echo "*********************************************************************************************************"

echo "UBTU_16.04_6.2.7 Ensure all users' home directories exist (Scored)"
#!/bin/bash 
cat /etc/passwd | awk -F: '{ print $1 " " $3 " " $6 }' | while read user uid dir; do 
if [ $uid -ge 1000 -a ! -d "$dir" -a $user != "nfsnobody" ]; then 
echo "The home directory ($dir) of user $user does not exist." 
fi 
done 2>/dev/null
t=$_
check_file $t
echo



echo "*********************************************************************************************************"
echo "*********************************************************************************************************"


echo "UBTU_16.04_6.2.8 Ensure users' home directories permissions are 750 or more restrictive (Scored)"
#!/bin/bash 
for dir in `cat /etc/passwd | egrep -v '(root|halt|sync|shutdown)' | awk -F: '($7 != "/usr/sbin/nologin") { print $6 }'`; do 
dirperm=`ls -ld $dir | cut -f1 -d" "` 
if [ `echo $dirperm | cut -c6 ` != "-" ]; then 
echo "Group Write permission set on directory $dir" 
fi 
if [ `echo $dirperm | cut -c8 ` != "-" ]; then 
echo "Other Read permission set on directory $dir" 
fi 
if [ `echo $dirperm | cut -c9 ` != "-" ]; then 
echo "Other Write permission set on directory $dir"
fi 
if [ `echo $dirperm | cut -c10 ` != "-" ]; then 
echo "Other Execute permission set on directory $dir" 
fi 
done 2>/dev/null
echo



echo "*********************************************************************************************************"
echo "*********************************************************************************************************"

echo "UBTU_16.04_6.2.9 Ensure users own their home directories (Scored)"
#!/bin/bash
cat /etc/passwd | awk -F: '{ print $1 " " $3 " " $6 }' | while read user uid dir; do 
if [ $uid -ge 1000 -a -d "$dir" -a $user != "nfsnobody" ]; then 
owner=$(stat -L -c "%U" "$dir") 
if [ "$owner" != "$user" ]; then 
echo "The home directory ($dir) of user $user is owned by $owner." 
fi 
fi 
done 2>/dev/null
t=$_
check_file $t
echo



echo "*********************************************************************************************************"
echo "*********************************************************************************************************"


echo "UBTU_16.04_6.2.10 Ensure users' dot files are not group or world writable (Scored)"
#!/bin/bash 
for dir in `cat /etc/passwd | egrep -v '(root|sync|halt|shutdown)' | awk -F: '($7 != "/usr/sbin/nologin") { print $6 }'`; do
for file in $dir/.[A-Za-z0-9]*; do 
if [ ! -h "$file" -a -f "$file" ]; then 
fileperm=`ls -ld $file | cut -f1 -d" "`

if [ `echo $fileperm | cut -c6 ` != "-" ]; then 
echo "Group Write permission set on file $file" 
fi 
if [ `echo $fileperm | cut -c9 ` != "-" ]; then 
echo "Other Write permission set on file $file" 
fi
fi 
done
done 2>/dev/null
t=$_
check_file $t
echo



echo "*********************************************************************************************************"
echo "*********************************************************************************************************"

echo "UBTU_16.04_6.2.11 Ensure no users have .forward files (Scored)"
#!/bin/bash 
cat /etc/passwd | egrep -v '^(root|halt|sync|shutdown)' | awk -F: '($7 != "/sbin/nologin" && $7 != "/bin/false") { print $1 " " $6 }' | while read user dir; do 
	if [ ! -d "$dir" ]; then 
		echo "The home directory ($dir) of user $user does not exist." 
	else if [ ! -h "$dir/.forward" -a -f "$dir/.forward" ]; then 
		echo ".forward file $dir/.forward exists" 
	fi 
fi 
done 2>/dev/null
t=$_
check_file $t
echo



echo "*********************************************************************************************************"
echo "*********************************************************************************************************"

echo "UBTU_16.04_6.2.12 Ensure no users have .netrc files (Scored)"
#!/bin/bash 
cat /etc/passwd | egrep -v '^(root|halt|sync|shutdown)' | awk -F: '($7 != "/sbin/nologin" && $7 != "/bin/false") { print $1 " " $6 }' | while read user dir; do 
	if [ ! -d "$dir" ]; then 
		echo "The home directory ($dir) of user $user does not exist." 
	else if [ ! -h "$dir/.netrc" -a -f "$dir/.netrc" ]; then 
		echo ".netrc file $dir/.netrc exists" 
fi 
fi 
done 2>/dev/null
t=$_
check_file $t
echo


echo "*********************************************************************************************************"
echo "*********************************************************************************************************"


echo "UBTU_16.04_6.2.13 Ensure users' .netrc Files are not group or world accessible (Scored)"
#!/bin/bash 
cat /etc/passwd | egrep -v '^(root|halt|sync|shutdown)' | awk -F: '($7 != "/sbin/nologin" && $7 != "/bin/false") { print $1 " " $6 }' | while read user dir; do 
	if [ ! -d "$dir" ]; then 
	echo "The home directory ($dir) of user $user does not exist." 
else 
	for file in $dir/.netrc; do 
		if [ ! -h "$file" -a -f "$file" ]; then 
fileperm=`ls -ld $file | cut -f1 -d" "` 
if [ `echo $fileperm | cut -c5 ` != "-" ]; then 
echo "Group Read set on $file" 
fi 
if [ `echo $fileperm | cut -c6 ` != "-" ]; then 
echo "Group Write set on $file" 
fi 
if [ `echo $fileperm | cut -c7 ` != "-" ]; then
echo "Group Execute set on $file" 
fi
if [ `echo $fileperm | cut -c8 ` != "-" ]; then 
echo "Other Read set on $file" 
fi
if [ `echo $fileperm | cut -c9 ` != "-" ]; then 
echo "Other Write set on $file" 
fi
 if [ `echo $fileperm | cut -c10 ` != "-" ]; then 
echo "Other Execute set on $file" 
fi
 fi
done
fi
done 2>/dev/null
t=$_
check_file $t
echo



echo "*********************************************************************************************************"
echo "*********************************************************************************************************"

echo "UBTU_16.04_6.2.14 Ensure no users have .rhosts files (Scored)"
#!/bin/bash 
for dir in `cat /etc/passwd | egrep -v '(root|halt|sync|shutdown)' | awk -F: '($7 != "/usr/sbin/nologin") { print $6 }'`; do 
for file in $dir/.rhosts; do 
if [ ! -h "$file" -a -f "$file" ]; then 
echo ".rhosts file in $dir" 
fi 
done
 done 2>/dev/null
t=$_
check_file $t
echo



echo "*********************************************************************************************************"
echo "*********************************************************************************************************"

echo "UBTU_16.04_6.2.15 Ensure all groups in /etc/passwd exist in /etc/group (Scored)"
#!/bin/bash 
for i in $(cut -s -d: -f4 /etc/passwd | sort -u ); do 
grep -q -P "^.*?:[^:]*:$i:" /etc/group
 if [ $? -ne 0 ]; then 
echo "Group $i is referenced by /etc/passwd but does not exist in /etc/group" 
fi 
done 2>/dev/null
t=$_
check_file $t
echo


echo "*********************************************************************************************************"
echo "*********************************************************************************************************"

echo "UBTU_16.04_6.2.16 Ensure no duplicate UIDs exist (Scored)"
#!/bin/bash
 cat /etc/passwd | cut -f3 -d":" | sort -n | uniq -c | while read x ; do [ -z "${x}" ] && break 
set - $x
 if [ $1 -gt 1 ]; then 
users=`awk -F: '($3 == n) { print $1 }' n=$2 /etc/passwd | xargs` 
echo "Duplicate UID ($2): ${users}" 
fi 
done 2>/dev/null
t=$_
check_file $t
echo


echo "*********************************************************************************************************"
echo "*********************************************************************************************************"

echo "UBTU_16.04_6.2.17 Ensure no duplicate GIDs exist (Scored)"
#!/bin/bash 
cat /etc/group | cut -f3 -d":" | sort -n | uniq -c | while read x ; do [ -z "${x}" ] && break 
set - $x 
if [ $1 -gt 1 ]; then 
groups=`awk -F: '($3 == n) { print $1 }' n=$2 /etc/group | xargs` 
echo "Duplicate GID ($2): ${groups}"
 fi 
done 2>/dev/null
t=$_
check_file $t
echo


echo "*********************************************************************************************************"
echo "*********************************************************************************************************"

echo "UBTU_16.04_6.2.18 Ensure no duplicate user names exist (Scored)"
#!/bin/bash 
cat /etc/passwd | cut -f1 -d":" | sort -n | uniq -c | while read x ; do [ -z "${x}" ] && break
 set - $x 
if [ $1 -gt 1 ]; then 
uids=`awk -F: '($1 == n) { print $3 }' n=$2 /etc/passwd | xargs` 
echo "Duplicate User Name ($2): ${uids}" 
fi 
done 2>/dev/null
t=$_
check_file $t
echo


echo "*********************************************************************************************************"
echo "*********************************************************************************************************"


echo "UBTU_16.04_6.2.19 Ensure no duplicate group names exist (Scored)"
#!/bin/bash 
cat /etc/group | cut -f1 -d":" | sort -n | uniq -c | while read x ; do [ -z "${x}" ] && break 
set - $x 
if [ $1 -gt 1 ]; then 
gids=`gawk -F: '($1 == n) { print $3 }' n=$2 /etc/group | xargs`
 echo "Duplicate Group Name ($2): ${gids}" 
fi 
done 2>/dev/null
t=$_
check_file $t
echo


echo "*********************************************************************************************************"
echo "*********************************************************************************************************"

echo "UBTU_16.04_6.2.20 Ensure shadow group is empty (Scored)"
grep ^shadow:[^:]*:[^:]*:[^:]+ /etc/group 2>/dev/null
t=$_
awk -F: '($4 == "<shadow-gid>") { print }' /etc/passwd
t=$_
check_file $t
echo



echo "*********************************************************************************************************"
echo "*********************************************************************************************************"


echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo "........................................END OF OUTPUT....................................."
echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo "*********************************************************************************************************"
echo "*********************************************************************************************************"