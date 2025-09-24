default: build push

build:
	docker build ./debian -t clcain/yolks:debian
	docker build ./debian-source -t clcain/yolks:debian-source
	docker build ./debian-jdk-21 -t clcain/yolks:debian-jdk-21

push:
	docker push clcain/yolks:debian
	docker push clcain/yolks:debian-source
	docker push clcain/yolks:debian-jdk-21

.PHONY: *
