This is a fork of [cirocosta/sample-grafana.git](https://github.com/cirocosta/sample-grafana.git)

### Usage

#### Bring Grafana with default dashboard
```sh
make up
```

#### Bring Grafana with custom dashboard directory & prometheus
```sh
make up DASHBOARDS_DIRECTORY=<path to dashboards dir> PROMETHEUS_URL=http://localhost:9090
```

#### Tail logs
```sh
make logs
```

#### Teardown Grafana
```sh
make down
```
