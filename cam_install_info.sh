#!/bin/bash
#cam_install_info.sh is a debug script used to troubleshoot multiple Octoprint installs on a 
#raspberry pi. Author Chris Riley
sudo apt -f install pastebinit
echo "Processing....Please Wait..."
echo "USB file" > ~/chris_fix 
if [ -e /etc/udev/rules.d/99-usb.rules ];
then
sudo pastebinit /etc/udev/rules.d/99-usb.rules > ~/chris_fix
else
echo "No USB file" >> ~/chris_fix 
fi
echo "List dev" >> ~/chris_fix
ls /dev |pastebinit >> ~/chris_fix
echo "Root files" >> ~/chris_fix 
if [ -e /root/bin/webcamd ];
then
sudo pastebinit /root/bin/webcamd >> ~/chris_fix
else
echo "No root WEBCAMD" >> ~/chris_fix 
fi
if [ -e /root/bin/webcamd2 ];
then
sudo pastebinit /root/bin/webcamd2 >> ~/chris_fix
else
echo "No root WEBCAMD2" >> ~/chris_fix 
fi
if [ -e /root/bin/webcamd3 ];
then
sudo pastebinit /root/bin/webcamd3 >> ~/chris_fix
else
echo "No root WEBCAMD3" >> ~/chris_fix 
fi
if [ -e /root/bin/webcamd4 ];
then
sudo pastebinit /root/bin/webcamd4 >> ~/chris_fix
else
echo "No Root WEBCAMD4" >> ~/chris_fix 
fi
echo "Default files" >> ~/chris_fix 
if [ -e /etc/default/webcamd ];
then
sudo pastebinit /etc/default/webcamd >> ~/chris_fix
else
echo "No default WEBCAMD" >> ~/chris_fix 
fi
if [ -e /etc/default/webcamd2 ];
then
sudo pastebinit /etc/default/webcamd2 >> ~/chris_fix
else
echo "No default WEBCAMD2" >> ~/chris_fix 
fi
if [ -e /etc/default/webcamd3 ];
then
sudo pastebinit /etc/default/webcamd3 >> ~/chris_fix
else
echo "No default WEBCAMD3" >> ~/chris_fix 
fi
if [ -e /etc/default/webcamd4 ];
then
sudo pastebinit /etc/default/webcamd4 >> ~/chris_fix
else
echo "No default WEBCAMD4" >> ~/chris_fix 
fi
echo "Init files" >> ~/chris_fix 
if [ -e /etc/init.d/webcamd ];
then
sudo pastebinit /etc/init.d/webcamd >> ~/chris_fix
else
echo "No init WEBCAMD" >> ~/chris_fix 
fi
if [ -e /etc/init.d/webcamd2 ];
then
sudo pastebinit /etc/init.d/webcamd2 >> ~/chris_fix
else
echo "No init WEBCAMD2" >> ~/chris_fix 
fi
if [ -e /etc/init.d/webcamd3 ];
then
sudo pastebinit /etc/init.d/webcamd3 >> ~/chris_fix
else
echo "No init WEBCAMD3" >> ~/chris_fix 
fi
if [ -e /etc/init.d/webcamd4 ];
then
sudo pastebinit /etc/init.d/webcamd4 >> ~/chris_fix
else
echo "No init WEBCAMD4" >> ~/chris_fix 
fi
echo "Web logs" >> ~/chris_fix 
if [ -e /var/log/webcamd.log ];
then
sudo pastebinit /var/log/webcamd.log >> ~/chris_fix
else
echo "No Weblog" >> ~/chris_fix 
fi
if [ -e /var/log/webcamd2.log ];
then
sudo pastebinit /var/log/webcamd2.log >> ~/chris_fix
else
echo "No Weblog2" >> ~/chris_fix 
fi
if [ -e /var/log/webcamd3.log ];
then
sudo pastebinit /var/log/webcamd3.log >> ~/chris_fix
else
echo "No Weblog3" >> ~/chris_fix 
fi
if [ -e /var/log/webcamd4.log ];
then
sudo pastebinit /var/log/webcamd4.log >> ~/chris_fix
else
echo "No Weblog4" >> ~/chris_fix 
fi
echo "Proxy files" >> ~/chris_fix 
if [ -e /etc/haproxy/haproxy.cfg ];
then
sudo pastebinit /etc/haproxy/haproxy.cfg >> ~/chris_fix
else
echo "No haproxy" >> ~/chris_fix 
fi
echo "Messages" >> ~/chris_fix
sudo tail -500 /var/log/messages | pastebinit >> ~/chris_fix
echo "All done! Send this link to Chris." 
sudo pastebinit ~/chris_fix 
