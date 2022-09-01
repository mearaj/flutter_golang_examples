# flutter_golang_examples

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## References
* [flutter-with-grpc-made-easy](https://gonuclei.com/resources/flutter-with-grpc-made-easy)
Note: use ```flutter pub``` instead of just ```pub```

## GRPC code generation
* Make sure you meet [prerequisites](https://grpc.io/docs/languages/dart/quickstart/)<br>
From inside [root](/) directory of this project, inside terminal/command line, run the following to generate grpc code
```
 protoc --dart_out=grpc:lib/grpc -I go/proto go/proto/*.proto go/proto/google/protobuf/*.proto
```
* Issues faced in above code
  * [google/protobuf/empty.pb.dart](https://github.com/google/protobuf.dart/issues/170)
  * [Solution](https://github.com/grpc/grpc-dart/issues/560)<br>
  The [/go/proto/google](/go/proto/google) and it's files are specially created as a fix for this issue.
  We should keep an eye on this issue and as soon as it is fixed, we may delete
  [/go/proto/google](/go/proto/google) directory recursively.

