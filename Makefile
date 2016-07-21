BRUNCH = node_modules/.bin/brunch
FLOW = node_modules/.bin/flow

.PHONY: static-build server iex-server container migrate flow test clean

server:
	MIX_ENV=dev mix phoenix.server

iex-server:
	MIX_ENV=dev iex -S mix phoenix.server

static-build:
	$(BRUNCH) build
