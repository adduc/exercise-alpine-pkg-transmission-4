include .env

build:
	rsync -rvPtal pkg/ data/srv/
	docker compose run --rm dev sh -c "apk update && abuild -F checksum && abuild -F -r -v"

publish:
	rsync -rvPtal ./data/packages/ ${PUBLISH_DEST}
