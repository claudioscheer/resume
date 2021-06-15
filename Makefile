start:
	xhost +local:root
	docker-compose up -d --build
	docker exec -it resume-latex /bin/bash

stop:
	docker-compose down --remove-orphans

.PHONY : all start stop
