# docker-twemproxy
twemproxy for docker

# How to use this image

```
docker run -d the40san/twemproxy
```

or specify `the40san/twemproxy` in your own Dockerfile's FROM

```
FROM my_conf as config
FROM the40san/twemproxy

COPY --from=config /my_conf.yml /nutcracker/etc/
ENV NUTCRACKER_CONF="my_conf.yml"
```

## Environment variables

### `NUTCRACKER_CONF`
This Environment-variable will used to determine which config should we load at runtime.

if you want to use own config file (in most case), COPY the config into your image, then set `ENV NUTCRACKER_CONF="<your_config_name>.yml"`
