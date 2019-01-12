bld-ubuntu:
	docker-compose build ubuntu18-04

bld-btc:
	docker-compose build btc-node

up-infra:
	docker-compose up fluentd elasticsearch grafana
	#http://localhost:3000

up-app:
	docker-compose up go-app
