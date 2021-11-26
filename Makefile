export DASHBOARDS_DIRECTORY ?= ./grafana/dashboards
export PROMETHEUS_URL ?= http://host.docker.internal:9090


.PHONY: up
up: datasources
	@docker-compose up -d

.PHONY: datasources
datasources:
	@envsubst < grafana/provisioning/datasources/all.yml.in > grafana/provisioning/datasources/all.yml # subst PROMETHEUS_URL env var

.PHONY: down
down:
	@docker-compose down

.PHONY: restart
restart: datasources
	@docker-compose restart

.PHONY: logs
logs:
	@docker-compose logs -f
