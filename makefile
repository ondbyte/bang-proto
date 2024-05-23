setup:
	@echo "Installing Protocol Buffers compiler..."
	sudo apt update
	sudo apt install -y protobuf-compiler
	@echo "Protocol Buffers compiler installed successfully!"
	@echo "Installing Go Protocol Buffers plugin..."
	go install google.golang.org/protobuf/cmd/protoc-gen-go@latest
	@echo "Go Protocol Buffers plugin installed successfully!"

go-proto:
	@echo "Generating Go code from Protocol Buffers..."
	protoc --go_out=. --go-grpc_out=. *.proto
	@echo "Go code generated successfully!"
	go mod tidy

	
dart-proto:
	@echo "Generating Dart code from Protocol Buffers..."
	protoc --dart_out=grpc:lib *.proto
	@echo "Dart code generated successfully!"
	dart pub get