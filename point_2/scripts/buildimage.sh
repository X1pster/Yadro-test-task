#!/bin/bash

container_name="yocto-con"

#Если контейнер не существует, создаем его и выполняем команду docker exec
#Если существует - запускаем и выполняем ту же команду
if [[ ! "$(docker ps -a -q -f name=$container_name)" ]]; then
  docker run -it -d --privileged -v $(pwd):/workdir --name $container_name yocto-image
  docker exec -i $container_name ./home/yocto/scripts/build.sh
else
  docker start $container_name
  docker exec -i $container_name /bin/bash -c "/home/yocto/scripts/build.sh"
fi
