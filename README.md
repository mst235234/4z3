# 2
docker build -t lab5docker . </br>
<img src="screen1.png" alt="screen wyniku dzialania polecenie" title="screen wyniku dzialania polecenie">
# 3
b. nalezy utworzyc folder, ktory bedzie wspodzielony, nadac odpowiednie uprawnienia i     uczynic go publicznym </br>
sudo mkdir /var/docker-nfs && sudo chown nobody:nogroup /var/docker-nfs && sudo chmod 777 /var/docker-nfs </br>
c. nalezy w pliku /etc/exports dodac linijke </br>
/var/docker-nfs 127.0.0.1(rw,sync,no_subtree_check) </br>\
d. wywolac polecenie: sudo exportfs -a && sudo systemctl restart nfs-kernel-server
# 4
stworzyc wolumen i uruchomic kontener nastepujacym poleceniem: </br>
docker run -it \ </br>
--name alpine4 \ </br>
--memory=512m \ </br>
--mount 'type=volume,source=RemoteVol,target=/logi,volume-driver=local,volume-opt=type=nfs,volume-opt=device=:/var/docker-nfs,volume-opt=o=addr=127.0.0.1' \ </br>
lab5docker </br>
<img src="screen2.png" alt="screen wyniku dzialania polecenie" title="screen wyniku dzialania polecenie">
# 5
Sprawdzic, czy istnieje plik nastepujacym poleceniem: </br>
cat /var/docker-nfs/info.log </br>
Sprawdzic ile pamieci dostepny ma kontener nastepujacym poleceniem: </br>
docker inspect alpine4 | grep \"Memory\"\: </br>
<img src="screen3.png" alt="screen wyniku dzialania polecenie" title="screen wyniku dzialania polecenie">
