# kth-node-backend
Containerised backend systems for node applications

NOTE: These services are only exposed to **localhost** on the docker host (your computer).

Start with ```./start.sh```

Stop with ```./stop.sh```

Use the following network settings in the ```docker-compose.yml``` for your app to connect to the backend bridge network:
```
networks:
  default:
    external:
      name: kthnodebackend_bnet
```

Database data is stored in the directories ```[this project dir]/redis``` and ```[this project dir]/mongodb```. These directories are gitignored.

## Redis

## MongoDB

