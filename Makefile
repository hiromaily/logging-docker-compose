USERNAME=`id -un`
USERID=`id -u`
GID=`id -g`

print:
	@echo ${USERNAME}
	@echo ${USERID}
	@echo ${GID}
	@echo ${USER}

bld-ubuntu:
	docker-compose build ubuntu18-04

# /bin/sh: UID: readonly variable
bld-btc:
	USERNAME=${USERNAME} USERID=${USERID} GID=${GID} docker-compose build btc-node

bld-btc-nocache:
	USERNAME=${USERNAME} USERID=${USERID} GID=${GID} docker-compose build --no-cache btc-node


up-infra:
	docker-compose up fluentd elasticsearch grafana
	#http://localhost:3000

up-btc:
	USERNAME=${USERNAME} USERID=${USERID} GID=${GID} docker-compose up btc-node

up-app:
	docker-compose up go-app
