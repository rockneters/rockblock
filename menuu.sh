#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- icanhazip.com);
IZIN=$( wget -qO- https://raw.githubusercontent.com/rockneters/rockblock/main/ipakses | grep $MYIP )
if [ $MYIP = $IZIN ]; then
echo -e "${green}PermissionAccepted...${NC}"
else
echo -e "${red}Permission Denied!${NC}"
echo -e "Please Contact Admin"
echo -e "+"
rm -f setup.sh
exit 0
fi
clear
echo -e ""
echo -e "=============================-Menu-=============================" | lolcat
echo -e "* menu         : List of Main Commands"
echo -e ""
echo -e "=========================-SSH & OpenVPN-========================" | lolcat
echo -e "* usernew      : Create SSH & OpenVPN Account"
echo -e "* trial        : Generate SSH & OpenVPN Trial Account"
echo -e "* htrial       : Generate SSH & OpenVPN Trial 1 Hour Account"
echo -e "* renew        : Extending SSH & OpenVPN Account Active Life"
echo -e "* deluser      : Delete SSH & OpenVPN Account"
echo -e "* cek          : Check User Login SSH & OpenVPN"
echo -e "* member       : Daftar Member SSH & OpenVPN"
echo -e "* delete       : Delete User Expired SSH & OpenVPN"
echo -e "* autokill     : Set up Autokill SSH"
echo -e "* ceklim       : Displays Users Who Do Multi Login SSH"
echo -e "* restart      : Restart Service Dropbear, Squid3, OpenVPN dan SSH"
echo -e ""
echo -e "===========================-Wireguard-=========================" | lolcat
echo -e "* add-wg       : Create Wireguard Account"
echo -e "* del-wg       : Delete Wireguard Account"
echo -e "* cek-wg       : Check User Login Wireguard"
echo -e "* renew-wg     : Extending Wireguard Account Active Life"
echo -e "* wg show      : Check Wireguard User Interface"
echo -e ""
echo -e "=============================-L2TP-============================" | lolcat
echo -e "* add-l2tp     : Creating L2TP Account"
echo -e "* del-l2tp     : Deleting L2TP Account"
echo -e "* renew-l2tp   : Extending L2TP Account Active Life"
echo -e ""
echo -e "=============================-PPTP-============================" | lolcat
echo -e "* add-pptp     : Create Account PPTP"
echo -e "* del-pptp     : Delete PPTP Account"
echo -e "* renew-pptp   : Extending PPTP Account Active Life"
echo -e "* cek-pptp     : Check User Login PPTP"
echo -e ""
echo -e "=============================-SSTP-============================" | lolcat
echo -e "* add-sstp     : Create Account SSTP"
echo -e "* del-sstp     : Delete SSTP Account"
echo -e "* renew-sstp   : Extending SSTP Account Active Life"
echo -e "* cek-sstp     : Check User Login SSTP"
echo -e ""
echo -e "=============================-SSR-=============================" | lolcat
echo -e "* add-ssr      : Create SSR Account"
echo -e "* del-ssr      : Deleting SSR Account"
echo -e "* renew-ssr    : Extending SSR Account Active Life"
echo -e "* ssr          : Show Other SSR Menu"
echo -e ""
echo -e "========================-Shadowsocks OBFS-=====================" | lolcat
echo -e "* add-ss       : Creating Shadowsocks Account"
echo -e "* del-ss       : Delete Shadowsocks Account"
echo -e "* renew-ss     : Extending Shadowsocks Account Active Life"
echo -e "* cek-ss       : Check User Login Shadowsocks"
echo -e ""
echo -e "=============================-VMESS-===========================" | lolcat
echo -e "* add-ws       : Create V2RAY Vmess Websocket Account"
echo -e "* del-ws       : Deleting V2RAY Vmess Websocket Account"
echo -e "* renew-ws     : Extending Vmess Account Active Life"
echo -e "* cek-ws       : Check User Login V2RAY"
echo -e "* cert2vray    : Renew Certificate V2RAY Account"
echo -e ""
echo -e "=============================-VLESS-===========================" | lolcat
echo -e "* add-vless    : Create V2RAY Vless Websocket Account"
echo -e "* del-vless    : Deleting V2RAY Vless Websocket Account"
echo -e "* renew-vless  : Extending Vless Account Active Life"
echo -e "* cek-ws       : Check User Login V2RAY"
echo -e ""
echo -e "=============================-Trojan-==========================" | lolcat
echo -e "* add-tr       : Create Trojan Account"
echo -e "* del-tr       : Deleting Trojan Account"
echo -e "* renew-tr     : Extending Trojan Account Active Life"
echo -e "* cek-tr       : Check User Login Trojan"
echo -e ""
echo -e "=============================-Trojan GO-========================" | lolcat
echo -e "* add-trgo     : Create Trojan GO Account"
echo -e "* del-trgo     : Deleting Trojan GO Account"
echo -e "* renew-trgo   : Extending Trojan GO Account Active Life"
echo -e ""
echo -e "=============================-SYSTEM-==========================" | lolcat
echo -e "* running      : Check Your Service Running"
echo -e "* add-host     : Add Or Change Subdomain Host For VPS"
echo -e "* change-port  : Change Port Of Some Service"
echo -e "* autobackup   : Autobackup Data VPS"
echo -e "* backup       : Backup Data VPS"
echo -e "* restore      : Restore Data VPS"
echo -e "* wbmn         : Webmin Menu"
echo -e "* kernel-updt  : Update To Latest Kernel"
echo -e "* limit-speed  : Limit Bandwith Speed Server"
echo -e "* ram          : Check Usage of VPS Ram"
echo -e "* reboot       : Reboot VPS"
echo -e "* speedtest    : Speedtest VPS"
echo -e "* update       : Update To Latest Script Version"
echo -e "* info         : Displaying System Information"
echo -e "* about        : Info Script Auto Install"
echo -e "* exit         : Exit From VPS "
echo -e ""
echo -e "===============================================================" | lolcat
echo -e ""
