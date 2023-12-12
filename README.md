# the nginx reverse proxy

## normal start and stop

```
sudo systemctl start docker-compose-ephemeral@nginx-reverse-proxy.service
sudo systemctl stop docker-compose-ephemeral@nginx-reverse-proxy.service
sudo systemctl status docker-compose-ephemeral@nginx-reverse-proxy.service
```

## test a new configuration

```
sudo systemctl stop docker-compose-ephemeral@nginx-reverse-proxy.service
sudo systemctl status docker-compose-ephemeral@nginx-reverse-proxy.service

# now test:
docker-compose up 

# when successfull stop with CTRL-C

# restart the service 
sudo systemctl start docker-compose-ephemeral@nginx-reverse-proxy.service
sudo systemctl status docker-compose-ephemeral@nginx-reverse-proxy.service
```
