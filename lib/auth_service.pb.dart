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

import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/timestamp.pb.dart' as $0;

class SendOtpReq extends $pb.GeneratedMessage {
  factory SendOtpReq({
    $core.String? phoneNumber,
  }) {
    final $result = create();
    if (phoneNumber != null) {
      $result.phoneNumber = phoneNumber;
    }
    return $result;
  }
  SendOtpReq._() : super();
  factory SendOtpReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SendOtpReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SendOtpReq', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'phoneNumber', protoName: 'phoneNumber')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SendOtpReq clone() => SendOtpReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SendOtpReq copyWith(void Function(SendOtpReq) updates) => super.copyWith((message) => updates(message as SendOtpReq)) as SendOtpReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SendOtpReq create() => SendOtpReq._();
  SendOtpReq createEmptyInstance() => create();
  static $pb.PbList<SendOtpReq> createRepeated() => $pb.PbList<SendOtpReq>();
  @$core.pragma('dart2js:noInline')
  static SendOtpReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SendOtpReq>(create);
  static SendOtpReq? _defaultInstance;

  /// number of the user to send otp to
  @$pb.TagNumber(1)
  $core.String get phoneNumber => $_getSZ(0);
  @$pb.TagNumber(1)
  set phoneNumber($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPhoneNumber() => $_has(0);
  @$pb.TagNumber(1)
  void clearPhoneNumber() => clearField(1);
}

class SendOtpResp extends $pb.GeneratedMessage {
  factory SendOtpResp({
    $core.String? otpReqToken,
    $0.Timestamp? validTill,
  }) {
    final $result = create();
    if (otpReqToken != null) {
      $result.otpReqToken = otpReqToken;
    }
    if (validTill != null) {
      $result.validTill = validTill;
    }
    return $result;
  }
  SendOtpResp._() : super();
  factory SendOtpResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SendOtpResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SendOtpResp', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'otpReqToken', protoName: 'otpReqToken')
    ..aOM<$0.Timestamp>(2, _omitFieldNames ? '' : 'validTill', protoName: 'validTill', subBuilder: $0.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SendOtpResp clone() => SendOtpResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SendOtpResp copyWith(void Function(SendOtpResp) updates) => super.copyWith((message) => updates(message as SendOtpResp)) as SendOtpResp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SendOtpResp create() => SendOtpResp._();
  SendOtpResp createEmptyInstance() => create();
  static $pb.PbList<SendOtpResp> createRepeated() => $pb.PbList<SendOtpResp>();
  @$core.pragma('dart2js:noInline')
  static SendOtpResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SendOtpResp>(create);
  static SendOtpResp? _defaultInstance;

  /// send this token in the call to the VerifyOtp along with the otp to verify the user and get the access token
  @$pb.TagNumber(1)
  $core.String get otpReqToken => $_getSZ(0);
  @$pb.TagNumber(1)
  set otpReqToken($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOtpReqToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearOtpReqToken() => clearField(1);

  @$pb.TagNumber(2)
  $0.Timestamp get validTill => $_getN(1);
  @$pb.TagNumber(2)
  set validTill($0.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasValidTill() => $_has(1);
  @$pb.TagNumber(2)
  void clearValidTill() => clearField(2);
  @$pb.TagNumber(2)
  $0.Timestamp ensureValidTill() => $_ensure(1);
}

class VerifyOtpReq extends $pb.GeneratedMessage {
  factory VerifyOtpReq({
    $core.String? otpReqToken,
    $core.String? otp,
  }) {
    final $result = create();
    if (otpReqToken != null) {
      $result.otpReqToken = otpReqToken;
    }
    if (otp != null) {
      $result.otp = otp;
    }
    return $result;
  }
  VerifyOtpReq._() : super();
  factory VerifyOtpReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VerifyOtpReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'VerifyOtpReq', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'otpReqToken', protoName: 'otpReqToken')
    ..aOS(2, _omitFieldNames ? '' : 'otp')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VerifyOtpReq clone() => VerifyOtpReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VerifyOtpReq copyWith(void Function(VerifyOtpReq) updates) => super.copyWith((message) => updates(message as VerifyOtpReq)) as VerifyOtpReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VerifyOtpReq create() => VerifyOtpReq._();
  VerifyOtpReq createEmptyInstance() => create();
  static $pb.PbList<VerifyOtpReq> createRepeated() => $pb.PbList<VerifyOtpReq>();
  @$core.pragma('dart2js:noInline')
  static VerifyOtpReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VerifyOtpReq>(create);
  static VerifyOtpReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get otpReqToken => $_getSZ(0);
  @$pb.TagNumber(1)
  set otpReqToken($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOtpReqToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearOtpReqToken() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get otp => $_getSZ(1);
  @$pb.TagNumber(2)
  set otp($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOtp() => $_has(1);
  @$pb.TagNumber(2)
  void clearOtp() => clearField(2);
}

class VerifyOtpResp extends $pb.GeneratedMessage {
  factory VerifyOtpResp({
    $core.String? accessToken,
  }) {
    final $result = create();
    if (accessToken != null) {
      $result.accessToken = accessToken;
    }
    return $result;
  }
  VerifyOtpResp._() : super();
  factory VerifyOtpResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VerifyOtpResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'VerifyOtpResp', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'accessToken', protoName: 'accessToken')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VerifyOtpResp clone() => VerifyOtpResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VerifyOtpResp copyWith(void Function(VerifyOtpResp) updates) => super.copyWith((message) => updates(message as VerifyOtpResp)) as VerifyOtpResp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VerifyOtpResp create() => VerifyOtpResp._();
  VerifyOtpResp createEmptyInstance() => create();
  static $pb.PbList<VerifyOtpResp> createRepeated() => $pb.PbList<VerifyOtpResp>();
  @$core.pragma('dart2js:noInline')
  static VerifyOtpResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VerifyOtpResp>(create);
  static VerifyOtpResp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accessToken => $_getSZ(0);
  @$pb.TagNumber(1)
  set accessToken($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccessToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccessToken() => clearField(1);
}

class GetSessionTokenReq extends $pb.GeneratedMessage {
  factory GetSessionTokenReq({
    $core.String? accessToken,
  }) {
    final $result = create();
    if (accessToken != null) {
      $result.accessToken = accessToken;
    }
    return $result;
  }
  GetSessionTokenReq._() : super();
  factory GetSessionTokenReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetSessionTokenReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetSessionTokenReq', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'accessToken', protoName: 'accessToken')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetSessionTokenReq clone() => GetSessionTokenReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetSessionTokenReq copyWith(void Function(GetSessionTokenReq) updates) => super.copyWith((message) => updates(message as GetSessionTokenReq)) as GetSessionTokenReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetSessionTokenReq create() => GetSessionTokenReq._();
  GetSessionTokenReq createEmptyInstance() => create();
  static $pb.PbList<GetSessionTokenReq> createRepeated() => $pb.PbList<GetSessionTokenReq>();
  @$core.pragma('dart2js:noInline')
  static GetSessionTokenReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetSessionTokenReq>(create);
  static GetSessionTokenReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accessToken => $_getSZ(0);
  @$pb.TagNumber(1)
  set accessToken($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccessToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccessToken() => clearField(1);
}

class GetSessionTokenResp extends $pb.GeneratedMessage {
  factory GetSessionTokenResp({
    $core.String? sessionToken,
  }) {
    final $result = create();
    if (sessionToken != null) {
      $result.sessionToken = sessionToken;
    }
    return $result;
  }
  GetSessionTokenResp._() : super();
  factory GetSessionTokenResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetSessionTokenResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetSessionTokenResp', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'sessionToken', protoName: 'sessionToken')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetSessionTokenResp clone() => GetSessionTokenResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetSessionTokenResp copyWith(void Function(GetSessionTokenResp) updates) => super.copyWith((message) => updates(message as GetSessionTokenResp)) as GetSessionTokenResp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetSessionTokenResp create() => GetSessionTokenResp._();
  GetSessionTokenResp createEmptyInstance() => create();
  static $pb.PbList<GetSessionTokenResp> createRepeated() => $pb.PbList<GetSessionTokenResp>();
  @$core.pragma('dart2js:noInline')
  static GetSessionTokenResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetSessionTokenResp>(create);
  static GetSessionTokenResp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sessionToken => $_getSZ(0);
  @$pb.TagNumber(1)
  set sessionToken($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionToken() => clearField(1);
}

class AuthServiceApi {
  $pb.RpcClient _client;
  AuthServiceApi(this._client);

  $async.Future<SendOtpResp> sendOtp($pb.ClientContext? ctx, SendOtpReq request) =>
    _client.invoke<SendOtpResp>(ctx, 'AuthService', 'SendOtp', request, SendOtpResp())
  ;
  $async.Future<VerifyOtpResp> verifyOtp($pb.ClientContext? ctx, VerifyOtpReq request) =>
    _client.invoke<VerifyOtpResp>(ctx, 'AuthService', 'VerifyOtp', request, VerifyOtpResp())
  ;
  $async.Future<GetSessionTokenResp> getSessionToken($pb.ClientContext? ctx, GetSessionTokenReq request) =>
    _client.invoke<GetSessionTokenResp>(ctx, 'AuthService', 'GetSessionToken', request, GetSessionTokenResp())
  ;
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
