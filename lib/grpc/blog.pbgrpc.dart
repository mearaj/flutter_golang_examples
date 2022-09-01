///
//  Generated code. Do not modify.
//  source: blog.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'blog.pb.dart' as $0;
import 'google/protobuf/empty.pb.dart' as $1;
export 'blog.pb.dart';

class BlogServiceClient extends $grpc.Client {
  static final _$createBlog = $grpc.ClientMethod<$0.Blog, $0.BlogId>(
      '/blog.BlogService/CreateBlog',
      ($0.Blog value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.BlogId.fromBuffer(value));
  static final _$readBlog = $grpc.ClientMethod<$0.BlogId, $0.Blog>(
      '/blog.BlogService/ReadBlog',
      ($0.BlogId value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Blog.fromBuffer(value));
  static final _$updateBlog = $grpc.ClientMethod<$0.Blog, $1.Empty>(
      '/blog.BlogService/UpdateBlog',
      ($0.Blog value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$deleteBlog = $grpc.ClientMethod<$0.BlogId, $1.Empty>(
      '/blog.BlogService/DeleteBlog',
      ($0.BlogId value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$listBlogs = $grpc.ClientMethod<$1.Empty, $0.Blog>(
      '/blog.BlogService/ListBlogs',
      ($1.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Blog.fromBuffer(value));

  BlogServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.BlogId> createBlog($0.Blog request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createBlog, request, options: options);
  }

  $grpc.ResponseFuture<$0.Blog> readBlog($0.BlogId request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$readBlog, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> updateBlog($0.Blog request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateBlog, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> deleteBlog($0.BlogId request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteBlog, request, options: options);
  }

  $grpc.ResponseStream<$0.Blog> listBlogs($1.Empty request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$listBlogs, $async.Stream.fromIterable([request]),
        options: options);
  }
}

abstract class BlogServiceBase extends $grpc.Service {
  $core.String get $name => 'blog.BlogService';

  BlogServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Blog, $0.BlogId>(
        'CreateBlog',
        createBlog_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Blog.fromBuffer(value),
        ($0.BlogId value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.BlogId, $0.Blog>(
        'ReadBlog',
        readBlog_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.BlogId.fromBuffer(value),
        ($0.Blog value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Blog, $1.Empty>(
        'UpdateBlog',
        updateBlog_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Blog.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.BlogId, $1.Empty>(
        'DeleteBlog',
        deleteBlog_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.BlogId.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $0.Blog>(
        'ListBlogs',
        listBlogs_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($0.Blog value) => value.writeToBuffer()));
  }

  $async.Future<$0.BlogId> createBlog_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Blog> request) async {
    return createBlog(call, await request);
  }

  $async.Future<$0.Blog> readBlog_Pre(
      $grpc.ServiceCall call, $async.Future<$0.BlogId> request) async {
    return readBlog(call, await request);
  }

  $async.Future<$1.Empty> updateBlog_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Blog> request) async {
    return updateBlog(call, await request);
  }

  $async.Future<$1.Empty> deleteBlog_Pre(
      $grpc.ServiceCall call, $async.Future<$0.BlogId> request) async {
    return deleteBlog(call, await request);
  }

  $async.Stream<$0.Blog> listBlogs_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Empty> request) async* {
    yield* listBlogs(call, await request);
  }

  $async.Future<$0.BlogId> createBlog($grpc.ServiceCall call, $0.Blog request);
  $async.Future<$0.Blog> readBlog($grpc.ServiceCall call, $0.BlogId request);
  $async.Future<$1.Empty> updateBlog($grpc.ServiceCall call, $0.Blog request);
  $async.Future<$1.Empty> deleteBlog($grpc.ServiceCall call, $0.BlogId request);
  $async.Stream<$0.Blog> listBlogs($grpc.ServiceCall call, $1.Empty request);
}
