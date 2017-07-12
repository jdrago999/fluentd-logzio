
# fluentd-logzio

## Usage

```bash
docker build -t my/fluentd-logzio:latest .
docker run \
  --name=fluentd-logzio \
  -e LOGZIO_TOKEN=XXXXXXXXXXXXX \
  --net=host \
  --restart=always \
  -d \
  my/fluentd-logzio:latest
```

Then, in your `docker-compose.yml`:

```yaml
...
  some-service:
    ...
    logging:
      driver: fluentd
      options:
        fluentd-address: "localhost:24224"
...
```

## Environment Variables

### LOGZIO_TOKEN
