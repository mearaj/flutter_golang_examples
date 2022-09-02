From inside [go](/) directory
```
 protoc -Iproto --go_opt=module=github.com/mearaj/flutter_golang_examples/go --go_out=. --go-grpc_opt=module=github.com/mearaj/flutter_golang_examples/go --go-grpc_out=. proto/*.proto
```

## [FFI (Foreign Function Interface)](https://stackoverflow.com/questions/63747683/how-to-call-go-lib-from-dart-using-ffi)
On Linux Platform
```
go build -buildmode=c-shared -o server.a server
```
Cross Compile for windows on arch linux
```
CGO_ENABLED=1 GOOS=windows CC=x86_64-w64-mingw32-gcc go build -buildmode=c-shared -o server.dll ./server
```
On Mac Platform
```
go build -buildmode=c-shared -o server.dylib server
```

## References
[correct-format-of-protoc-go-package](https://stackoverflow.com/questions/61666805/correct-format-of-protoc-go-package)