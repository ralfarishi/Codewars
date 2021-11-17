#!/usr/bin/env bash

mainmenu() {
    echo -ne "
=====================
      MAIN MENU
=====================
1) Biodata
2) Kalkulator
3) Grade Nilai
4) Exit
Masukan Pilihan [1-4] :  "
    read -r pil
    case $pil in
    1)  
        echo "==========================="
        echo "          BIODATA          "
        echo "==========================="
        echo -n "Masukan nama anda  : "
        read nama
        echo -n "Masukan npm anda   : "
        read npm
        echo -n "Masukan kelas anda : "
        read kelas
        echo "---------------------------"
        echo "Nama saya $nama"
        echo "NPM saya $npm"
        echo "Kelas saya $kelas"
        ;;
    2)
        echo "============================"
        echo "         KALKULATOR         "
        echo "============================"
        echo -n "Masukan bilangan pertama : "
        read bil1
        echo -n "Masukan bilangan kedua   : "
        read bil2
        echo "----------------------------"
        echo "Masukkan Pilihan :"
        echo "1. Pertambahan"
        echo "2. Pengurangan"
        echo "3. Perkalian"
        echo "4. Pembagian"
        echo -n "> "
        read choice
        # Switch Case to perform
        # calculator operations
        case $choice in
        1)res=`echo $bil1 + $bil2 | bc`
        ;;
        2)res=`echo $bil1 - $bil2 | bc`
        ;;
        3)res=`echo $bil1 \* $bil2 | bc`
        ;;
        4)res=`echo "scale=2; $bil1 / $bil2" | bc`
        ;;
        esac
        echo "Hasil : $res"
        ;;
    3)
        echo "========================="
        echo "          NILAI          "
        echo "========================="
        read -p "Masukan nilai : " nilai
        echo "-------------------------"

        if [[ ! $nilai =~ ^[0-9]*$ ]]
        then
            [[ $nilai =~ [Qq]uit ]] && exit
            echo "Please enter a number between 0 and 100 or \"quit\" to exit" && exit
        fi
        if [ $nilai -le 69 ]
        then
            echo "Mengulang matkul"
        elif  [ $nilai -le 79 ]
        then
            echo "Nilai anda cukup"
        elif  [ $nilai -le 89 ]
        then
            echo "Selamat nilai anda bagus"
        elif [ $nilai -le 100 ]
        then
            echo "Selamat nilai anda sangat bagus"
        elif [ $nilai -gt 100 ]
        then
            echo "Please enter a number between 0 and 100"
            exit
        fi  
        ;;
    4)
        echo "Program selesai ..."
        exit 0
        ;;
    *)
        echo "Maaf, pilihan tidak tersedia. Mohon coba lagi"
        exit 1
        ;;
    esac
}

mainmenu
