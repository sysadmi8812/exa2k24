cp media-wiki/wiki.yml ~/wiki.yml
# сначала выполняем этот скрипт, манипуляции на cli и далее 9й скрипт
cd --
docker volume create dbvolume
docker-compose -f wiki.yml up -d
