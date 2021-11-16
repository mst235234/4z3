# Mikolaj Stachira #
FROM alpine:latest
# kopiujemy skrypt do obrazu
COPY /pluto.sh /bin/pluto.sh
# nadajemy uprawnienia do wykonania skryptu
RUN chmod 777 /bin/pluto.sh
# uruchamiamy skrypt
ENTRYPOINT ["sh", "/bin/pluto.sh"]