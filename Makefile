update-submodules:
	git submodule foreach git checkout main && \
	git submodule foreach git pull origin main

grpc:
	protoc --go_out=. --go-grpc_out=. \
	--go_opt=paths=import  \
	--govalidators_out=. \
	--go-grpc_opt=paths=import ./...
