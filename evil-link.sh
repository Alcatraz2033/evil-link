#!/bin/bash

RED="$(printf '\033[31m')"  GREEN="$(printf '\033[32m')"  ORANGE="$(printf '\033[33m')"  BLUE="$(printf '\033[34m')"
MAGENTA="$(printf '\033[35m')"  CYAN="$(printf '\033[36m')"  WHITE="$(printf '\033[37m')" BLACK="$(printf '\033[30m')"
REDBG="$(printf '\033[41m')"  GREENBG="$(printf '\033[42m')"  ORANGEBG="$(printf '\033[43m')"  BLUEBG="$(printf '\033[44m')"
MAGENTABG="$(printf '\033[45m')"  CYANBG="$(printf '\033[46m')"  WHITEBG="$(printf '\033[47m')" BLACKBG="$(printf '\033[40m')"
RESETBG="$(printf '\e[0m\n')" endColour="$(printf '\033[0m\e[0m')"

banner() {
	cat <<- EOF

${MAGENTA}   ▄████████  ▄█    █▄   ▄█   ▄█       
${MAGENTA}  ███    ███ ███    ███ ███  ███       
${MAGENTA}  ███    █▀  ███    ███ ███▌ ███       
${MAGENTA} ▄███▄▄▄     ███    ███ ███▌ ███       
${MAGENTA}▀▀███▀▀▀     ███    ███ ███▌ ███       
${MAGENTA}  ███    █▄  ███    ███ ███  ███       
${MAGENTA}  ███    ███ ███    ███ ███  ███▌    ▄ 
${MAGENTA}  ██████████  ▀██████▀  █▀   █████▄▄██ 
${MAGENTA}          ${CYAN}BY: Alcatraz2033   ${MAGENTA}▀         
${MAGENTA} ▄█        ▄█  ███▄▄▄▄      ▄█   ▄█▄   
${MAGENTA}███       ███  ███▀▀▀██▄   ███ ▄███▀   
${MAGENTA}███       ███▌ ███   ███   ███▐██▀     
${MAGENTA}███       ███▌ ███   ███  ▄█████▀      
${MAGENTA}███       ███▌ ███   ███ ▀▀█████▄      
${MAGENTA}███       ███  ███   ███   ███▐██▄     
${MAGENTA}███▌    ▄ ███  ███   ███   ███ ▀███▄   
${MAGENTA}█████▄▄██ █▀    ▀█   █▀    ███   ▀█▀   
${MAGENTA}▀                          ▀           
	EOF
}

function ctrl_c(){
    echo -e "\n${RED}\n[!] Saliendo...${endColour}"
    exit 1
}
trap ctrl_c INT

banner 
echo ""
echo -e "${GREEN}Ingrese un url con ${CYAN}https:// o http://${endColour}"
read -r -p"${CYAN}Link a camuflar:${endColour} " url
if [ $? == "1" ]; then
    echo -e "\n${RED}[!] No ha ingresado una url con https...${endColour}"
    exit 1
fi 

echo -e "${GREEN}Ingrese un url plantilla ${CYAN}Ejemplo: https://www.facebook.com${endColour}"
read -r -p "${CYAN}Pagina plantilla:${endColour} " plantilla
if [ ! $plantilla ];then
    echo -e "\n${RED}[!] No ha ingresado la plantilla...${endColour}"
    exit 1
fi 

echo -e "${RED}(OPCIONAL) ${GREEN}Ingrese el complemento de la plantilla\nseparado por '-' ${CYAN}Ejemplo: photos-perros${endColour}"
read -r -p "${CYAN}Complemento de la plantilla:${endColour} " complemento 

complemento2=$(echo $complemento | sed 's/-/%7A/g')
curl -s --data "url=$url&shorturl=&opt=0" https://is.gd/create.php | html2text > masbien.tmp
link=$(cat masbien.tmp | grep "https" | head -n 1 | sed 's/\[//' | sed 's/\]//' | sed 's/https:\/\///')

if [ ! $complemento ];then
    echo -e "${GREEN}\n[*] Link camuflado:${endColour} $plantilla@$link"
else
    echo -e "${GREEN}\n[*] Link camuflado:${endColour} $plantilla%7A$complemento2@$link"
fi
rm masbien.tmp 
