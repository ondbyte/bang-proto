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

@$core.Deprecated('Use sendOtpRespDescriptor instead')
const SendOtpResp$json = {
  '1': 'SendOtpResp',
  '2': [
    {'1': 'otpReqToken', '3': 1, '4': 1, '5': 9, '10': 'otpReqToken'},
    {'1': 'validTill', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'validTill'},
  ],
};

/// Descriptor for `SendOtpResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendOtpRespDescriptor = $convert.base64Decode(
    'CgtTZW5kT3RwUmVzcBIgCgtvdHBSZXFUb2tlbhgBIAEoCVILb3RwUmVxVG9rZW4SOAoJdmFsaW'
    'RUaWxsGAIgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIJdmFsaWRUaWxs');

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

@$core.Deprecated('Use verifyOtpRespDescriptor instead')
const VerifyOtpResp$json = {
  '1': 'VerifyOtpResp',
  '2': [
    {'1': 'accessToken', '3': 1, '4': 1, '5': 9, '10': 'accessToken'},
  ],
};

/// Descriptor for `VerifyOtpResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List verifyOtpRespDescriptor = $convert.base64Decode(
    'Cg1WZXJpZnlPdHBSZXNwEiAKC2FjY2Vzc1Rva2VuGAEgASgJUgthY2Nlc3NUb2tlbg==');

@$core.Deprecated('Use getSessionTokenReqDescriptor instead')
const GetSessionTokenReq$json = {
  '1': 'GetSessionTokenReq',
  '2': [
    {'1': 'accessToken', '3': 1, '4': 1, '5': 9, '10': 'accessToken'},
  ],
};

/// Descriptor for `GetSessionTokenReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSessionTokenReqDescriptor = $convert.base64Decode(
    'ChJHZXRTZXNzaW9uVG9rZW5SZXESIAoLYWNjZXNzVG9rZW4YASABKAlSC2FjY2Vzc1Rva2Vu');

@$core.Deprecated('Use getSessionTokenRespDescriptor instead')
const GetSessionTokenResp$json = {
  '1': 'GetSessionTokenResp',
  '2': [
    {'1': 'sessionToken', '3': 1, '4': 1, '5': 9, '10': 'sessionToken'},
  ],
};

/// Descriptor for `GetSessionTokenResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSessionTokenRespDescriptor = $convert.base64Decode(
    'ChNHZXRTZXNzaW9uVG9rZW5SZXNwEiIKDHNlc3Npb25Ub2tlbhgBIAEoCVIMc2Vzc2lvblRva2'
    'Vu');

