///
//  Generated code. Do not modify.
//  source: blog.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use blogDescriptor instead')
const Blog$json = const {
  '1': 'Blog',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'author_id', '3': 2, '4': 1, '5': 9, '10': 'authorId'},
    const {'1': 'title', '3': 3, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'content', '3': 4, '4': 1, '5': 9, '10': 'content'},
  ],
};

/// Descriptor for `Blog`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List blogDescriptor = $convert.base64Decode('CgRCbG9nEg4KAmlkGAEgASgJUgJpZBIbCglhdXRob3JfaWQYAiABKAlSCGF1dGhvcklkEhQKBXRpdGxlGAMgASgJUgV0aXRsZRIYCgdjb250ZW50GAQgASgJUgdjb250ZW50');
@$core.Deprecated('Use blogIdDescriptor instead')
const BlogId$json = const {
  '1': 'BlogId',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `BlogId`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List blogIdDescriptor = $convert.base64Decode('CgZCbG9nSWQSDgoCaWQYASABKAlSAmlk');
