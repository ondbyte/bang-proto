setup:
	@echo "Installing Protocol Buffers compiler..."
	sudo apt update
	sudo apt install -y protobuf-compiler
	@echo "Protocol Buffers compiler installed successfully!"
	@echo "Installing Go Protocol Buffers plugin..."
	go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@latest
	@echo "Go Protocol Buffers plugin installed successfully!"
	@echo "Installing Dart Protocol Buffers plugin..."
	dart pub global activate protoc_plugin
	@echo "Dart Protocol Buffers plugin installed successfully!"

go-proto:
	@echo "Deleting any existing go code at './go/*'"
	rm -rf go/* 2>/dev/null || true
	@echo "Generating Go code from Protocol Buffers..."
	protoc --go_out=. --go-grpc_out=. *.proto
	@echo "Go code generated successfully!"
	go mod tidy
	

PATH  := $(HOME)/.pub-cache/bin:$(shell go env GOPATH)/bin:$(PATH)

dart-proto:
	dart pub global activate protoc_plugin
	@echo "Deleting any existing dart code at 'lib/*'"
	rm -rf lib/* 2>/dev/null || true
	@echo "Generating Dart code from Protocol Buffers..."
	protoc --dart_out=./lib google/protobuf/timestamp.proto ./*.proto
	@echo "Dart code generated successfully!"
	dart pub get

proto: go-proto dart-proto
