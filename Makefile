BRUNCH = node_modules/.bin/brunch
FLOW = node_modules/.bin/flow

.PHONY: static-build server iex-server container migrate flow test clean

server:
	mix phoenix.server

container:
	docker-compose run -p 5000:4000 -e "MIX_ENV=dev" -w /app web bash

iex-server:
	iex -S mix phoenix.server

static-build:
	$(BRUNCH) build
