From inside [go](/) directory
```
 protoc -Iproto --go_opt=module=github.com/mearaj/flutter_golang_examples/go --go_out=. --go-grpc_opt=module=github.com/mearaj/flutter_golang_examples/go --go-grpc_out=. proto/*.proto
```

## [FFI (Foreign Function Interface)](https://stackoverflow.com/questions/63747683/how-to-call-go-lib-from-dart-using-ffi)
```
go build -buildmode=c-shared -o server.a server
```

## References
[correct-format-of-protoc-go-package](https://stackoverflow.com/questions/61666805/correct-format-of-protoc-go-package)