#!/bin/bash

# Warna
red='\033[1;31m'
green='\033[1;32m'
yellow='\033[1;33m'
blue='\033[1;34m'
nc='\033[0m' # reset warna

banner() {
  clear
  echo -e "${yellow}========================================${nc}"
  echo -e "        ${red}CYBER FLAY TOOLS${nc}"
  echo -e "${yellow}========================================${nc}"
  echo -e "   ${green}TOOLS INI DIBUAT OLEH CYBER FLAY${nc}"
  echo ""

  echo -e "${blue}      .----."
  echo -e "     /      \\"
  echo -e "    |  () () |"
  echo -e "     \\  /\\  /"
  echo -e "      '----'${nc}"
  echo ""
}

while true; do
  banner
  echo -e "${yellow}1.${nc} OSINT Tools"
  echo -e "${yellow}2.${nc} Deface (HTML + JS)"
  echo -e "${yellow}3.${nc} Menu Lain"
  echo -e "${yellow}0.${nc} Keluar"
  echo ""
  read -p "Pilih menu: " menu

  case $menu in
    1) echo "[OSINT] Fitur OSINT berjalan..."; read -p "Enter untuk lanjut..." ;;
    2) echo "[Deface] Fitur Deface berjalan..."; read -p "Enter untuk lanjut..." ;;
    3) 
      while true; do
        clear
        echo -e "${yellow}========== MENU LAIN =============${nc}"
        echo "1. Cek IP Publik"
        echo "2. Cek Cuaca"
        echo "3. Kalkulator"
        echo "4. Cek Tanggal & Jam"
        echo "0. Kembali"
        echo "================================="
        read -p "Pilih: " lain
        case $lain in
          1) echo "IP Publik Anda:"; curl -s ifconfig.me; echo; read -p "Enter..." ;;
          2) read -p "Masukkan nama kota: " kota
             curl -s "wttr.in/$kota?format=3"
             echo; read -p "Enter..." ;;
          3) read -p "Masukkan ekspresi (contoh: 5+10*2): " eksp
             hasil=$(echo "$eksp" | bc -l)
             echo "Hasil: $hasil"
             read -p "Enter..." ;;
          4) date; read -p "Enter..." ;;
          0) break ;;
          *) echo "Pilihan salah!" ; sleep 1 ;;
        esac
      done
      ;;
    0) echo "Keluar..."; exit 0 ;;
    *) echo "Pilihan tidak valid!" ; sleep 1 ;;
  esac
done
