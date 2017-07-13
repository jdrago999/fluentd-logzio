
# jdrago999/fluentd-logzio

## Usage

```bash
docker run \
  --name=fluentd-logzio \
  -e LOGZIO_TOKEN=XXXXXXXXXXXXXXXXXXXXXXXXXX \
  --net=host \
  --restart=always \
  -d \
  jdrago999/fluentd-logzio:latest
```

Or, in your `docker-compose.yml`:

```yaml
...
  some-service:
    ...
    logging:
      driver: fluentd
      options:
        fluentd-address: "localhost:24224"
    depends_on:
      - fluentd
...
  fluentd:
    image: jdrago999/fluentd-logzio:latest
    network_mode: host
    environment:
      - LOGZIO_TOKEN=XXXXXXXXXXXXXXXXXXXXXXXXXX
    ports:
      - 24284
...
```

## Environment Variables

### LOGZIO_TOKEN
