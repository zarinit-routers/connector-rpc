clear:
    rm -rf $(find . -name "*.pb.go")
protogen:
    protoc --go_out=connector --go_opt=paths=source_relative \
    --go-grpc_out=connector --go-grpc_opt=paths=source_relative \
    protos/connector.proto
