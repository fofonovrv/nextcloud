# nextcloud
Собственное облачное хранилище Nextcloud. Тестировалось на aarch64.
Состоит из nginx (alpine), letsencrypt, mariadb, nextcloud.
В файле docker-compose.yml необходимо задать имя домена и пароли для БД.
Сделано на примере https://rtfm.co.ua/nextcloud-zapusk-v-docker-compose-na-debian-s-ssl-ot-lets-encrypt/
