#!/bin/bash
clear
read -p "Lütfen Site adını belirtin: " siteadi
echo $siteadi >> website.txt
file=website.txt

echo "Basliyor"

while read p; do
    echo "MX kayıtları kontrol ediliyor: "$p
    echo "Website: " $p >> mx_sonuclar.txt
    nslookup -type=MX $p | grep "MX" >>  mx_sonuclar.txt
    echo "---------------------------------------" >> mx_sonuclar.txt
done < $file
echo "Tamamlandi!"
echo "---------------------------------------"
cat mx_sonuclar.txt
