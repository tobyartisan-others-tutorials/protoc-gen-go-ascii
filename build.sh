# The first line, `go get`, builds cmd/protoc-gen-go-ascii and puts it under $GOBIN
# (which should be in your $PATH).
#
# The second and remaining lines run protoc with two plugins protc-gen-go
# (invoked by the --go_out flag), and our very own protoc-gen-go-ascii
# (invoked by the --go-ascii_out) flag. The paths=source_relative tells protoc
# to put the generated files relative to the source proto.
go get -u protoc-gen-go-ascii/cmd/protoc-gen-go-ascii && \
  protoc --go_out=. --go_opt=paths=source_relative \
  --go-ascii_out=. --go-ascii_opt=paths=source_relative,font=doh \
  example/example.proto