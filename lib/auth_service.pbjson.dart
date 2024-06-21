//
//  Generated code. Do not modify.
//  source: auth_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use accessClaimsDescriptor instead')
const AccessClaims$json = {
  '1': 'AccessClaims',
  '2': [
    {'1': 'userId', '3': 1, '4': 1, '5': 3, '10': 'userId'},
    {'1': 'phoneNumber', '3': 2, '4': 1, '5': 9, '10': 'phoneNumber'},
    {'1': 'iat', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'iat'},
  ],
};

/// Descriptor for `AccessClaims`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accessClaimsDescriptor = $convert.base64Decode(
    'CgxBY2Nlc3NDbGFpbXMSFgoGdXNlcklkGAEgASgDUgZ1c2VySWQSIAoLcGhvbmVOdW1iZXIYAi'
    'ABKAlSC3Bob25lTnVtYmVyEiwKA2lhdBgDIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3Rh'
    'bXBSA2lhdA==');

@$core.Deprecated('Use sessionClaimsDescriptor instead')
const SessionClaims$json = {
  '1': 'SessionClaims',
  '2': [
    {'1': 'userId', '3': 1, '4': 1, '5': 3, '10': 'userId'},
    {'1': 'phoneNumber', '3': 2, '4': 1, '5': 9, '10': 'phoneNumber'},
    {'1': 'iat', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'iat'},
  ],
};

/// Descriptor for `SessionClaims`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sessionClaimsDescriptor = $convert.base64Decode(
    'Cg1TZXNzaW9uQ2xhaW1zEhYKBnVzZXJJZBgBIAEoA1IGdXNlcklkEiAKC3Bob25lTnVtYmVyGA'
    'IgASgJUgtwaG9uZU51bWJlchIsCgNpYXQYAyABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0'
    'YW1wUgNpYXQ=');

@$core.Deprecated('Use otpClaimsDescriptor instead')
const OtpClaims$json = {
  '1': 'OtpClaims',
  '2': [
    {'1': 'otp', '3': 1, '4': 1, '5': 9, '10': 'otp'},
    {'1': 'phoneNumber', '3': 2, '4': 1, '5': 9, '10': 'phoneNumber'},
    {'1': 'iat', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'iat'},
  ],
};

/// Descriptor for `OtpClaims`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List otpClaimsDescriptor = $convert.base64Decode(
    'CglPdHBDbGFpbXMSEAoDb3RwGAEgASgJUgNvdHASIAoLcGhvbmVOdW1iZXIYAiABKAlSC3Bob2'
    '5lTnVtYmVyEiwKA2lhdBgDIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSA2lhdA==');

@$core.Deprecated('Use sendOtpReqDescriptor instead')
const SendOtpReq$json = {
  '1': 'SendOtpReq',
  '2': [
    {'1': 'phoneNumber', '3': 1, '4': 1, '5': 9, '10': 'phoneNumber'},
  ],
};

/// Descriptor for `SendOtpReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendOtpReqDescriptor = $convert.base64Decode(
    'CgpTZW5kT3RwUmVxEiAKC3Bob25lTnVtYmVyGAEgASgJUgtwaG9uZU51bWJlcg==');

@$core.Deprecated('Use verifyOtpReqDescriptor instead')
const VerifyOtpReq$json = {
  '1': 'VerifyOtpReq',
  '2': [
    {'1': 'otpReqToken', '3': 1, '4': 1, '5': 9, '10': 'otpReqToken'},
    {'1': 'otp', '3': 2, '4': 1, '5': 9, '10': 'otp'},
  ],
};

/// Descriptor for `VerifyOtpReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List verifyOtpReqDescriptor = $convert.base64Decode(
    'CgxWZXJpZnlPdHBSZXESIAoLb3RwUmVxVG9rZW4YASABKAlSC290cFJlcVRva2VuEhAKA290cB'
    'gCIAEoCVIDb3Rw');

