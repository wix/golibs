prepare:
	mkdir -p vendor/x/y
	go mod download

format:
	gofmt -s -w .

lint:
	gofmt -d .

test:
	go test $(MAYBE_VERBOSE) -p 1 `go list ./...`

ci-steps: prepare lint test


