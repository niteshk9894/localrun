# Run local
This will help you to run local Kafka, redis, memecached and postgressDB .
Pre requisites: 
  1. Docker engine needs to be installed.
  2. Docker compose needs to installed.

To install redis on windows (WSL):
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
