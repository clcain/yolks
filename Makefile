default: build push

build:
	docker build ./debian -t clcain/yolks:debian
	docker build ./debian-source -t clcain/yolks:debian-source

push:
	docker push clcain/yolks:debian
	docker push clcain/yolks:debian-source

.PHONY: *
