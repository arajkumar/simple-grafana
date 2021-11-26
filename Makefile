DASHBOARDS_DIRECTORY ?= grafana/dashboards
PROMETHEUS_URL ?= "http://localhost:9090"

.PHONY: up
up:
	@envsubst < grafana/provisioning/datasources/all.yml.in > grafana/provisioning/datasources/all.yml
	@docker-compose up -d

.PHONY: down
down:
	@docker-compose down

.PHONY: logs
logs:
	@docker-compose logs -f
