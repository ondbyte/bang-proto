//
//  Generated code. Do not modify.
//  source: auth_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'auth_service.pb.dart' as $0;
import 'auth_service.pbjson.dart';

export 'auth_service.pb.dart';

abstract class AuthServiceBase extends $pb.GeneratedService {
  $async.Future<$0.SendOtpResp> sendOtp($pb.ServerContext ctx, $0.SendOtpReq request);
  $async.Future<$0.VerifyOtpResp> verifyOtp($pb.ServerContext ctx, $0.VerifyOtpReq request);
  $async.Future<$0.GetSessionTokenResp> getSessionToken($pb.ServerContext ctx, $0.GetSessionTokenReq request);

  $pb.GeneratedMessage createRequest($core.String methodName) {
    switch (methodName) {
      case 'SendOtp': return $0.SendOtpReq();
      case 'VerifyOtp': return $0.VerifyOtpReq();
      case 'GetSessionToken': return $0.GetSessionTokenReq();
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String methodName, $pb.GeneratedMessage request) {
    switch (methodName) {
      case 'SendOtp': return this.sendOtp(ctx, request as $0.SendOtpReq);
      case 'VerifyOtp': return this.verifyOtp(ctx, request as $0.VerifyOtpReq);
      case 'GetSessionToken': return this.getSessionToken(ctx, request as $0.GetSessionTokenReq);
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => AuthServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => AuthServiceBase$messageJson;
}

