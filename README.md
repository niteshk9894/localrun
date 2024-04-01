# Run local
This will help you to run local Kafka, redis, memecached and postgressDB .
Pre requisites: 
  1. Docker engine needs to be installed.
  2. Docker compose needs to installed.

To install redis on windows (WSL):
  1. sudo apt-add-repository ppa:redislabs/redis
  2. sudo apt-get update
  3. sudo apt-get upgrade
  4. sudo apt-get install redis-server

  ./redis.sh
  
To install on mac:
  1. brew install redis
  2. ./redis.sh

To kill redis server :
  1. ps aux | grep redis-server
  2. pkill -KILL redis-server
