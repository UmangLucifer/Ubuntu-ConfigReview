<h1>#Automated Configuration Review Script for Ubuntu</h1>

<b1>This is an automated configuration review script for reviewing the configurations of ubuntu system.
Operation should be performed as a root user otherwise it may give unexpected result or error. Don't run as Nonroot user as it may not be able to access certain area of the system.</b1>


<h2>Filesystem Configuration:</h2>
Directories that are used for system functions can be further protected by placing them on separate partitions. This provides protection for resource exhaustion and enables the use of mounting options that are applicable to the directory's intended use.

<h2>Services:</h2>
One of the best way to protest your system by disabling all services that are not required for system and enable the services which you needed but with a secure configuration.

<h2>Network Configuration:</h2>
This one provides the secure network configuration of your system like host,routers,firewall etc.

<h2>Logging and Auditing:</h2>
This one gives the result how you configure logging,and auditing of your system.It is recommended that rsyslog be used for logging and auditd be used for auditing  to automatically monitor logs for intrusion attempts and other suspicious system behavior.

<h2>Access,authentication and authorization:</h2>
This is important because it enables organizations to keep their networks secure by permitting only authenticated users (or processes) to access its protected resources, which may include computer systems, networks, databases, websites and other network-based applications or services.Authorization is sometimes seen as both the preliminary setting up of permissions by a system administrator and the actual checking of the permission values that have been set up when a user is getting access.

<h2>System Maintainence:</h2>
The maintenance and are intended to be checked on a frequent basis to ensure system stability.


<h2>Type on your console to run the script:</h2>
<span>#./filename.sh</span>

<h2>Important: <i>Before running give full priviledge to this file and wait till its completed.</i></h2>

<h2>ERROR:</h2>
<b>Sometime this type of error comes as shown and follow the instruction for fixing below:</b></br>
#./filename.sh line 5: $'\r': command not found</br>
#./filename.sh line 6: syntax error near unexpected token '$'{\r''}</br>
#./filename.sh line 6: 'check_file(){}</br>

<h2>How to fix above error:</h2> #dos2unix filename

<br>Now run the script again.</br>

<h2>Goodluck!</h2>
