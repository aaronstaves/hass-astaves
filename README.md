# hass-astaves

The **0.71.0** home-assistant image built with the dev version of **python_openzwave 0.4.4**.  This was done specifically to get my GoControl/Linear GD00Z-4 working with home-assistant.

## Image
Pre-built image can be found on [hub.docker.com](https://hub.docker.com/r/astaves/home-assistant/)

## Run
```
docker run \
  --net=host \
  -v /etc/localtime:/etc/localtime:ro \
  -v /data/hass_config:/config \
  --device /dev/zwave:/dev/zwave \
  astaves/home-assistant:0.68.1
```

## Caveats
* Volumes may be different
* Device(s) may be different
* **--net=host** isn't required but helps with discoverable devices
  * Will make a document on how to use macvlan at sompoint
