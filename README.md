# Run local
This will you run local Kafka, redis, memecached and postgressDB .

TO install redis on windows :
  sudo apt-add-repository ppa:redislabs/redis
  sudo apt-get update
  sudo apt-get upgrade
  sudo apt-get install redis-server

  ./redis.sh
To install on mac:
  brew install redis
  ./redis.sh

To kill redis server :
  ps aux | grep redis-server
  pkill -KILL redis-server
