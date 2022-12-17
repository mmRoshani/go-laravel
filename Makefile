BINARY_NAME=goLaravel
PREFIX=gl>

build:
	@go mod vendor
	@echo "${PREFIX} go-leravel bulding process started..."
	@go build -o tmp/${BINARY_NAME} .
	@echo "${PREFIX} go-leravel built."

run: build
	@echo "gl> running..."
	@./tmp/${BINARY_NAME} &
	@echo "${PREFIX} go-laravel started."

clean:
	@echo "${PREFIX} go-laravel cleaning process started..."
	@go clean
	@rm tmp/${BINARY_NAME}
	@echo "${PREFIX} go-laravel cleaning process finished."

test:
	@echo "${PREFIX} go-leravel testing process started..."
	@go test ./...
	@echo "${PREFIX} go-leravel testing process finished."

start: run

stop:
	@echo "${PREFIX} go-leravel stoping task..."
	@-pkill -SIGTERM -f "./tmp/${BINARY_NAME}"
	@echo "${PREFIX} go-leravel stopped."

restart: stop start