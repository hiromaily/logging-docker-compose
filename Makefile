UID=`id -u`
GID=`id -g`
USER=`id -un`
#UID=`id -u` GID=`id -g` docker-compose up

print:
	@echo ${UID}
	@echo ${GID}
	@echo ${USER}

bld-ubuntu:
	docker-compose build ubuntu18-04

# /bin/sh: UID: readonly variable
bld-btc:
	USERNAME=${USER} USERID=${UID} GID=${GID} docker-compose build btc-node

bld-btc-nocache:
	USERNAME=${USER} USERID=${UID} GID=${GID} docker-compose build --no-cache btc-node


up-infra:
	docker-compose up fluentd elasticsearch grafana
	#http://localhost:3000

up-btc:
	USERNAME=${USER} USERID=${UID} GID=${GID} docker-compose up btc-node

up-app:
	docker-compose up go-app
