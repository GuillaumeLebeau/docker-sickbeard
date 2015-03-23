# Docker for SickBeard VO/VF by sarakha63

This is a Dockerfile to set up "SickBeard VO/VF by sarakha63" - (https://github.com/sarakha63/Sick-Beard)

## Build from docker file

```
git clone git@github.com:guillaumelebeau/docker-sickbeard.git
cd docker-sickbeard
docker build -t sickbeard .
```
## Tags
- guillaumegl/docker-sickbeard
 
## Ports
- **TCP 8081** - Web Interface

## Volumes
- **/volumes/config** - Sickbeard configuration data
- **/volumes/download** - Completed downloads from download client
- **/volumes/media** - Sickbeard media folder

## Running
The quickest way to get it running
```
docker run --restart always -d -h *your_host_name* -v /*your_config_location*:/volumes/config  -v /*your_videos_location*:/volumes/media -v /*your_download_location*:/volumes/download -p 8081:8081 guillaumelebeau/docker-sickbeard
```
