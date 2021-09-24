install:
	go mod tidy
	
lint:
	go fmt ./...

test:
	go test -v ./...

build:
	go build -v .

run:
	go run main.go