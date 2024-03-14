#!/bin/bash

#Если контейнер существует, создаем его и выполняем команду docker exec
#Усли существует - запускаем и выполняем ту же команду
if [[ ! "$(docker ps -a -q -f name="yocto-con")" ]]; then
  echo "Container doesn't exist"
else
  docker start yocto-con
  docker exec -i yocto-con ./home/yocto/scripts/launch.sh
fi
