clear:
    rm -rf $(find . -name "*.pb.go")
protogen:
    protoc \
    --go_out=gen \
    --go_opt=paths=source_relative \
    --go-grpc_out=gen \
    --go-grpc_opt=paths=source_relative \
    -I protos \
    ./protos/connector/connector.proto
