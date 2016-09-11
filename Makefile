include Makefile.settings

.PHONY: wheel build

wheel:
	${INFO} "Building wheels..."
	@ docker-compose up
	@ docker-compose down -v || true
	${INFO} "Successfully built wheels"

build: wheel
	${INFO} "Building image..."
	@ docker build -t dockerproductionaws/ansible .
	${INFO} "Build complete"

publish:
	${INFO} "Publishing image..."
	@ docker push dockerproductionaws/ansible
	${INFO} "Publish complete"	