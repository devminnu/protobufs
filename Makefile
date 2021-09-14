update-submodules:
	git submodule foreach git checkout main && \
	git submodule foreach git pull origin main

grpc:
	protoc \
	--proto_path=ecommerce \
	--go_out=$(arg) \
	--go_opt=paths=source_relative  \
	--go-grpc_out=$(arg) \
	--go-grpc_opt=paths=source_relative \
	ecommerce/*/*.proto
