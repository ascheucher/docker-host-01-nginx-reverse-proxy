# the nginx reverse proxy

## install to systemd

```
cp docker-compose-ephemeral@.service /etc/systemd/system
sudo systemctl enable docker-compose-ephemeral@nginx-reverse-proxy.service
```

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
