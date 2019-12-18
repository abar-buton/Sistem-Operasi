#!bin/bash
#set an infinite loop
while :
do
clear
# display menu
echo "Server Name - $(hostname)"
echo "-------------------------------"
echo "M A I N - M E N U"
echo "-------------------------------"
echo "A. Aritmatika"
echo "B. Tentang Pembuat"
echo "C. Exit"
# get input from the user
read -p "Enter your choice [ A - C ] " choice
# make decision using case.. in..esac
        case $choice in
        A)
                echo "Program Aritmatika"
                echo "1. Penjumlahan"
                echo "2. Pengurangan"
                echo "3. Perkalian"
                echo "4. Pembagian"
                echo "5. Kembali ke Menu Utama ..."
                read -p "Enter your choice [ 1 - 5 ] " choice2
                case $choice2 in
                1)
                        echo "Operasi Penjumlahan"
                        echo -n "input bilangan pertama = "
                        read bilA

                        echo -n "input bilangan kedua = "
                        read bilB
                        jumlah=$((bilA + bilB))
                        echo "$bilA + $bilB = $jumlah"
                        read -p "Press [Enter] key to continue..."
                        readEnterKey
                        ;;
                2)
                        echo "Operasi Penjumlahan"
                        echo -n "input bilangan pertama = "
                        read bilA
                        echo -n "input bilangan kedua = "
                        read bilB
                        jumlah=$((bilA - bilB))
                        echo "$bilA - $bilB = $jumlah"
                        read -p "Press [Enter]key to continue..."
                        readEnterKey
                        ;;
                3)
                        echo "Operasi Penjumlahan"
                        echo -n "input bilangan pertama = "
                        read bilA
                        echo -n "input bilangan kedua = "
                        read bilB
                        jumlah=$((bilA * bilB))
                        echo "$bilA * $bilB = $jumlah"
                        read -p "Press [Enter]key to continue..."
                        readEnterKey
                        ;;

                4)
                        echo "Operasi Penjumlahan"
                        echo -n "input bilangan pertama = "
                        read bilA
                        echo -n "input bilangan kedua = "
                        read bilB
                        jumlah=$((bilA / bilB))
                        echo "$bilA : $bilB = $jumlah"
                        read -p "Press [Enter]key to continue..."
                        readEnterKey
                        ;;
                5)
                        ;;
                *)
                        echo "Error: Invalid option..."
                        read -p "Press [Enter] key to continue..."
                        readEnterKey
                        ;;
                esac
                ;;
        B)
                echo "Tentang pembuat"
                echo "1. Nama, NIM, Home Dir"
                echo "2. Username@ Hostname"
                echo "3. Kembali ke Menu Utama ..."
                read -p "Enter your choice [ 1 - 3 ] " choice3
                case $choice3 in
                1)
                        echo "Tentang pembuat"
                        echo
                        echo "Nama              : Sabarudin"
                        echo "NIM               : 2197200883"
                        echo "Directory : $(pwd)"
                        read -p "Press [Enter]key to continue..."
                        readEnterKey
                        ;;
                2)
                        echo "Username  : $(who -m)"
                        echo "Hostname  : $(hostname)"
                        read -p "Press [Enter]key to continue..."
                        readEnterKey
                        ;;
                3)
                        ;;
                *)
                        echo "Error: Invalid option..."
                        read -p "Press [Enter] key to continue..."
                        readEnterKey
                        ;;

                esac
                ;;
        C)
                echo "Bye!"
                exit 0
                ;;
        *)
                echo "Error: Invalid option..."
                read -p "Press [Enter] key to continue..."
                readEnterKey
;;
esac
done