//
//  Generated code. Do not modify.
//  source: auth_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'auth_service.pb.dart' as $0;

export 'auth_service.pb.dart';

@$pb.GrpcServiceName('AuthService')
class AuthServiceClient extends $grpc.Client {
  static final _$sendOtp = $grpc.ClientMethod<$0.SendOtpReq, $0.SendOtpResp>(
      '/AuthService/SendOtp',
      ($0.SendOtpReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SendOtpResp.fromBuffer(value));
  static final _$verifyOtp =
      $grpc.ClientMethod<$0.VerifyOtpReq, $0.VerifyOtpResp>(
          '/AuthService/VerifyOtp',
          ($0.VerifyOtpReq value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.VerifyOtpResp.fromBuffer(value));
  static final _$getSessionToken =
      $grpc.ClientMethod<$0.GetSessionTokenReq, $0.GetSessionTokenResp>(
          '/AuthService/GetSessionToken',
          ($0.GetSessionTokenReq value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetSessionTokenResp.fromBuffer(value));

  AuthServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.SendOtpResp> sendOtp($0.SendOtpReq request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sendOtp, request, options: options);
  }

  $grpc.ResponseFuture<$0.VerifyOtpResp> verifyOtp($0.VerifyOtpReq request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$verifyOtp, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetSessionTokenResp> getSessionToken(
      $0.GetSessionTokenReq request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSessionToken, request, options: options);
  }
}

@$pb.GrpcServiceName('AuthService')
abstract class AuthServiceBase extends $grpc.Service {
  $core.String get $name => 'AuthService';

  AuthServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.SendOtpReq, $0.SendOtpResp>(
        'SendOtp',
        sendOtp_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SendOtpReq.fromBuffer(value),
        ($0.SendOtpResp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.VerifyOtpReq, $0.VerifyOtpResp>(
        'VerifyOtp',
        verifyOtp_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.VerifyOtpReq.fromBuffer(value),
        ($0.VerifyOtpResp value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.GetSessionTokenReq, $0.GetSessionTokenResp>(
            'GetSessionToken',
            getSessionToken_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.GetSessionTokenReq.fromBuffer(value),
            ($0.GetSessionTokenResp value) => value.writeToBuffer()));
  }

  $async.Future<$0.SendOtpResp> sendOtp_Pre(
      $grpc.ServiceCall call, $async.Future<$0.SendOtpReq> request) async {
    return sendOtp(call, await request);
  }

  $async.Future<$0.VerifyOtpResp> verifyOtp_Pre(
      $grpc.ServiceCall call, $async.Future<$0.VerifyOtpReq> request) async {
    return verifyOtp(call, await request);
  }

  $async.Future<$0.GetSessionTokenResp> getSessionToken_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GetSessionTokenReq> request) async {
    return getSessionToken(call, await request);
  }

  $async.Future<$0.SendOtpResp> sendOtp(
      $grpc.ServiceCall call, $0.SendOtpReq request);
  $async.Future<$0.VerifyOtpResp> verifyOtp(
      $grpc.ServiceCall call, $0.VerifyOtpReq request);
  $async.Future<$0.GetSessionTokenResp> getSessionToken(
      $grpc.ServiceCall call, $0.GetSessionTokenReq request);
}
