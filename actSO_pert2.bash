#!/usr/bin/env bash

mainmenu() {
    echo -ne "
=====================
      MAIN MENU
=====================
1) Biodata
2) Percabangan
3) Perulangan
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
        echo "========================="
        echo "       PERCABANGAN       "
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
    echo "D"
elif  [ $nilai -le 79 ]
then
    echo "Selamat anda mendapat grade C"
elif  [ $nilai -le 89 ]
then
    echo "Selamat anda mendapat grade B"
elif [ $nilai -le 100 ]
then
    echo "Selamat anda mendapat grade A"
elif [ $nilai -gt 100 ]
then
    echo "Please enter a number between 0 and 100"
    exit
fi
        ;;
    3)
        echo "================================"
        echo "           PERULANGAN           "
        echo "================================"
        echo -n "Masukan tinggi segitiga  : "
        read tinggi
        echo "--------------------------------"
        x=0
        for ((i=1; i<=$tinggi; i++))
        do
            for ((j=1; j<=i; j++))
            do
                printf "$j "
            done
        printf "\n"
        done
        ;;
    0)
        echo "Bye bye."
        exit 0
        ;;
    *)
        echo "Maaf, pilihan tidak tersedia. Mohon coba lagi"
        exit 1
        ;;
    esac
}

mainmenu
