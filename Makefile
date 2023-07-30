
dev:
	docker run -it --rm \
	--volume $$(pwd):/workspace \
	--workdir /workspace \
	--entrypoint /workspace/scripts/dev.sh \
	library/ruby:3.2 bash

docker-test:
	docker run -it --rm \
	--volume $$(pwd):/workspace \
	--workdir /workspace \
	--entrypoint /workspace/scripts/dev.sh \
	library/ruby:3.2 make test

install:
	bundle install

test:
	rspec test.rb
