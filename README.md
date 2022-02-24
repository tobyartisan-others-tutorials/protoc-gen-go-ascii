# ASCII Protoc Plug-in: protoc-gen-go-ascii

Following the tutorial at [Creating a protoc plugin to generate Go code with protogen](https://rotemtam.com/2021/03/22/creating-a-protoc-plugin-to-gen-go-code/) to create a custom protoc plugin to generate Go code from protobuf files.

## Overview

The goal of this project is to invoke our custom plugin through protoc as follows:

`protoc --go-ascii_out=. --go-ascii_opt=paths=source_relative --go_out=. --go_opt=paths=source_relative -I . example.proto`

The flag `--go-ascii_out` tells protoc to look for an executable named `protoc-gen-ascii` in the current PATH. protoc will then execute the plugin.

The above command will then generate a file named `example_ascii.pb.go` that contains ASCII art in the generated Go file.
