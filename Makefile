default: build push

build:
	docker build ./debian -t clcain/yolks:debian
	docker build ./debian-steam -t clcain/yolks:debian-steam
	docker build ./debian-source -t clcain/yolks:debian-source
	docker build ./debian-jdk-21 -t clcain/yolks:debian-jdk-21
	docker build ./debian-proton -t clcain/yolks:debian-proton

push:
	docker push clcain/yolks:debian
	docker push clcain/yolks:debian-steam
	docker push clcain/yolks:debian-source
	docker push clcain/yolks:debian-jdk-21
	docker push clcain/yolks:debian-proton

.PHONY: *
