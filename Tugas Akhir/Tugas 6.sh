#!/bin/bash

# Tampilan Selamat Datang
echo "*** Backup Shell Script ***"
echo "*** Run time: $(date) @ $(hostname)"
cd /home/sabarudin/
ls

NOW=$(date +"%d-%m-%Y")

echo "Isikan Direktory Anda"
read direktory
cd $direktory

if [ -f "/home/sabarudin/$direktory/$NOW/latest.tar.gz" ]

then
echo "File Backup Sudah Ada"
echo "Tekan [1] Untuk Mengganti Dengan File Backup Baru"
echo "Tekan [0] Untuk Membatalkan"
echo
read -p "Pilih 1/0 :" pil

if [ $pil -eq 1 ]

then
rm -r $NOW/
mkdir $NOW
cd $NOW
tar -czvf latest1.tar.gz /home/sabarudin/$direktory
echo "File Backup Tersimpan pada /home/sabarudin/$direktory/$NOW/latest1.tar.gz"

elif [ $pil -eq 0]

then
exit 0
fi
else
mkdir $NOW
cd $NOW
tar -czvf latest.tar.gz /home/sabarudin/$direktory
echo "File Backup Tersimpan pada /home/sabarudin/$direktory/$NOW/latest.tar.gz"
fi