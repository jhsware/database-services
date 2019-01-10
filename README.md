# Data Services
Containerised data services. Forked from kth-node-backend

NOTE: These services are only exposed to **localhost** on the docker host (your computer).

Run ```./service help``` to get options

Use the following network settings in the ```docker-compose.yml``` for your app to connect to the backend bridge network:
```
networks:
  default:
    external:
      name: kthnodebackend_[service]_net
```

Database data is stored in the directories ```[this project dir]/redis``` and ```[this project dir]/mongodb```. These directories are gitignored.

## Redis

## MongoDB

## Solr
Copied from:
https://github.com/docker-solr/docker-solr

## Memcached