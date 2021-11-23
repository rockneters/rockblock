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
apt install jq curl -y
read -rp "Masukkan Domain Cloudflare :" -e domain
read -rp "Masukkan Email Cloudflare :" -e email
read -rp "Masukkan Key Cloudflare :" -e key
echo ""
cat <<EOF > /home/email_cf.conf
DOMAIN=$domain
CF_ID=$email
CF_KEY=$key
EOF
clear
echo "Done"
echo -e "==============================="
echo -e " Domain        : ${domain}     "
echo -e " Email         : ${email}      "
echo -e " CF Key        : ${key}        "
echo -e "==============================="
