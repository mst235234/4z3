# zapisanie daty utworzenia
echo Data utworzenia: 17.10.2021 > info.log
# odczytanie dostepnej pamieci z odpowiedniego pliku
cat /proc/meminfo | grep MemAvailable >> info.log
# przeniesienie logow na wolumen
mv info.log /logi/info.log
