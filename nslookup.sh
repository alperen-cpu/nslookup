#!/bin/bash
read -p "Lütfen Site adını belirtin: " siteadi
echo $siteadi >> website.txt
file=website.txt

echo "Basliyor"

while read p; do
    echo "kontrol ediliyor: " $p
    echo "Website: " $p >> sonuclar.txt
    nslookup $p | grep "Address" >> sonuclar.txt
    echo "---------------------------------------" >> sonuclar.txt
done < $file

echo "Tamamlandi!"
cat sonuclar.txt