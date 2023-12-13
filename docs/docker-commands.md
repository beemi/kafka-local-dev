# Docker commands

### Running all Services

```bash
docker-compose up -d
```


### Stopping the Services

```bash
docker-compose down
```

```bash
docker-compose down --rmi all
```

Stop all containers and remove all images used by any service defined in the Compose file.

To clean up your environment, execute the following command.

```bash
docker-compose down --rmi all --volumes
```
Stop all running docker conatiners and remove all images used by any service defined in the Compose file.

```bash
docker stop $(docker ps -aq)
```
Stop all running docker containers.

```bash
docker stop $(docker ps -aq)
```

Remove all docker containers.

```bash
docker rm $(docker ps -aq)
```
