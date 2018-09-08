up-infra:
	docker-compose up fluentd elasticsearch grafana
	#http://localhost:3000

up-app:
	docker-compose up app
