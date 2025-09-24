default: build push

build:
	docker build ./debian -t clcain/yolks:debian

push:
	docker push clcain/yolks:debian

.PHONY: *
