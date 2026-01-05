
```
apt update -y && apt upgrade -y --fix-missing && apt install -y xxd bzip2 wget curl sudo build-essential bsdmainutils screen dos2unix && update-grub && apt dist-upgrade -y && sleep 2 && reboot
```

```
screen -S setup-session bash -c "wget -q https://raw.githubusercontent.com/haniefautophile-official/link/main/install.sh && chmod +x install.sh && ./install.sh; read -p 'Tekan enter untuk keluar...'"
```
Untuk Update Script

```
wget -q https://raw.githubusercontent.com/haniefautophile-official/link/main/update.sh && chmod +x update.sh && ./update.sh && rm -f update.sh
```


Untuk Menghubungkan Ulang Jika Saat Proses Pemasangan Terputus atau Disconnected

```
screen -r -d setup
```