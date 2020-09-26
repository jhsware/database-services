# Data Services
Containerised database backends for local development. Fire up one or more databases and connect to them without having to install them individually.

Example:
```bash
./service start mongodb redis elasticsearch
```

**NOTE:** These services are ONLY exposed to **localhost** on the docker host (your computer). You don't have to worry about protecting them from intrusion by bad actors on your network.

The databases (except memcache) maintain state between restarts in this folder. If you remove this folder you free the space but you also lose your data.

Requires Docker Desktop or similar to work. You can download it here:
https://www.docker.com/products/docker-desktop

(Forked from kth-node-backend)

Run ```./service --help``` to get options
```bash
$ ./service -h

Usage: service start [services]
Usage: service stop [services]
You can start/stop multiple services with one call by separating them with space.

services:
elasticsearch -- elasticsearch available on 9200
memcached -- memcached daemon available on 11211
mongodb -- mongodb available on 27017
redis -- redis available on 6379
solr -- solr available on 8983
```

Use the following network settings in the ```docker-compose.yml``` for your app to connect to the backend bridge network:
```
networks:
  default:
    external:
      name: database-service_[service]_net
```

Or access it from your local machine on their respective ports.

## Where is the data stored?

Database data is stored in the directories specified in each ```docker-compose-xxx.yml``` file. It's a bit of a mixed bag at the moment so you acctually need to inspect the configuration. The data files are .gitignored.

## Redis
Data stored in: ./redis

## MongoDB
Data stored in: ./mongodb

## Solr
Data stored in: ./solr/data
Configuration stored in: ./solr/config

Copied from:
https://github.com/docker-solr/docker-solr

## Elasticsearch
Data stored in: ./elasticsearch/data

## Memcached
Data stored in: memory