ssh:
	docker-compose run -d ansible-server /bin/bash

start:
	@ansible-playbook vms.yaml -t "start"

stop:
	@ansible-playbook vms.yaml -t "stop"