include Makefile.settings

.PHONY: build publish

build:
	${INFO} "Building wheels..."
	@ docker-compose up
	@ docker-compose down -v || true
	${INFO} "Building image..."
	@ docker build -t dockerproductionaws/ansible .
	${INFO} "Build complete"

publish:
	${INFO} "Publishing image..."
	@ docker push dockerproductionaws/ansible
	${INFO} "Publish complete"