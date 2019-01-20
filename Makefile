USERNAME=`id -un`
USERID=`id -u`
GID=`id -g`

#UID=`id -u` GID=`id -g` docker-compose up

print:
	@echo ${USERNAME}
	@echo ${USERID}
	@echo ${GID}

bld-ubuntu:
	docker-compose build ubuntu18-04

bld-btc:
	USERNAME=${USERNAME} USERID=${USERID} GID=${GID} docker-compose build btc-node

up-infra:
	docker-compose up fluentd elasticsearch grafana
	#http://localhost:3000

up-btc:
	USERNAME=${USERNAME} USERID=${USERID} GID=${GID} docker-compose up btc-node

up-app:
	docker-compose up go-app
