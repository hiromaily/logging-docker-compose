UID=`id -u`
GID=`id -g`

#UID=`id -u` GID=`id -g` docker-compose up

print:
	@echo ${UID}
	@echo ${GID}

bld-ubuntu:
	docker-compose build ubuntu18-04

bld-btc:
	UID=$UID GID=$GID docker-compose build btc-node

up-infra:
	docker-compose up fluentd elasticsearch grafana
	#http://localhost:3000

up-app:
	docker-compose up go-app
