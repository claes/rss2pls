#!/bin/bash

xsldir="$( cd "$( dirname "$0" )" && pwd )"

declare -A podcasts=( 
["http://api.sr.se/api/rss/pod/4021"]="SR Studio Ett"
["http://api.sr.se/api/rss/pod/3951"]="SR Studio Medierna"
["http://api.sr.se/api/rss/pod/3953"]="SR Ekots Lördagsintervju"
["http://api.sr.se/api/rss/pod/3795"]="SR Ekot"
["http://api.sr.se/api/rss/pod/3958"]="SR Godmorgon, världen"
["http://api.sr.se/api/rss/pod/3967"]="SR Konflikt"
["http://api.sr.se/api/rss/pod/4892"]="SR Mammas nya kille"
["http://api.sr.se/api/rss/pod/4008"]="SR Naturmorgon"
["http://api.sr.se/api/rss/pod/3783"]="SR P4 Stockholm"
["http://api.sr.se/api/rss/pod/4013"]="SR P1 Dokumentär"
["http://api.sr.se/api/rss/pod/12202"]="SR P1 Morgon"
["http://api.sr.se/api/rss/pod/7534"]="SR P2-fågeln"
["http://api.sr.se/api/rss/pod/3966"]="SR P3 Dokumentär"
["http://api.sr.se/api/rss/pod/4896"]="SR P4 Dokumentär"
["http://api.sr.se/api/rss/pod/9135"]="SR Radiopsykologen"
["http://api.sr.se/api/rss/pod/4007"]="SR Spanarna"
["http://api.sr.se/api/rss/pod/4017"]="SR Vetandets värld"
["http://api.sr.se/api/rss/pod/3976"]="SR Vetenskapsradion Forum"
["http://api.sr.se/api/rss/pod/4020"]="SR Vetenskapsradion Historia"
["http://api.sr.se/api/rss/pod/3988"]="SR Vetenskapsradion Veckomagasin"
["http://api.sr.se/api/rss/pod/7625"]="SR Väder")

for url in "${!podcasts[@]}";  
do curl $url | xsltproc $xsldir/rss2pls.xsl - > "${podcasts[$url]}.pls";  
done


