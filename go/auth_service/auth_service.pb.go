// Code generated by protoc-gen-go. DO NOT EDIT.
// versions:
// 	protoc-gen-go v1.34.1
// 	protoc        v3.21.12
// source: auth_service.proto

package auth_service

import (
	protoreflect "google.golang.org/protobuf/reflect/protoreflect"
	protoimpl "google.golang.org/protobuf/runtime/protoimpl"
	timestamppb "google.golang.org/protobuf/types/known/timestamppb"
	reflect "reflect"
	sync "sync"
)

const (
	// Verify that this generated code is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(20 - protoimpl.MinVersion)
	// Verify that runtime/protoimpl is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(protoimpl.MaxVersion - 20)
)

type SendOtpReq struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	// number of the user to send otp to
	PhoneNumber string `protobuf:"bytes,1,opt,name=phoneNumber,proto3" json:"phoneNumber,omitempty"`
}

func (x *SendOtpReq) Reset() {
	*x = SendOtpReq{}
	if protoimpl.UnsafeEnabled {
		mi := &file_auth_service_proto_msgTypes[0]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *SendOtpReq) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*SendOtpReq) ProtoMessage() {}

func (x *SendOtpReq) ProtoReflect() protoreflect.Message {
	mi := &file_auth_service_proto_msgTypes[0]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use SendOtpReq.ProtoReflect.Descriptor instead.
func (*SendOtpReq) Descriptor() ([]byte, []int) {
	return file_auth_service_proto_rawDescGZIP(), []int{0}
}

func (x *SendOtpReq) GetPhoneNumber() string {
	if x != nil {
		return x.PhoneNumber
	}
	return ""
}

type SendOtpResp struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	// send this token in the call to the VerifyOtp along with the otp to verify the user and get the access token
	OtpReqToken string `protobuf:"bytes,1,opt,name=otpReqToken,proto3" json:"otpReqToken,omitempty"`
}

func (x *SendOtpResp) Reset() {
	*x = SendOtpResp{}
	if protoimpl.UnsafeEnabled {
		mi := &file_auth_service_proto_msgTypes[1]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *SendOtpResp) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*SendOtpResp) ProtoMessage() {}

func (x *SendOtpResp) ProtoReflect() protoreflect.Message {
	mi := &file_auth_service_proto_msgTypes[1]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use SendOtpResp.ProtoReflect.Descriptor instead.
func (*SendOtpResp) Descriptor() ([]byte, []int) {
	return file_auth_service_proto_rawDescGZIP(), []int{1}
}

func (x *SendOtpResp) GetOtpReqToken() string {
	if x != nil {
		return x.OtpReqToken
	}
	return ""
}

type VerifyOtpReq struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	OtpReqToken string `protobuf:"bytes,1,opt,name=otpReqToken,proto3" json:"otpReqToken,omitempty"`
	Otp         string `protobuf:"bytes,2,opt,name=otp,proto3" json:"otp,omitempty"`
}

func (x *VerifyOtpReq) Reset() {
	*x = VerifyOtpReq{}
	if protoimpl.UnsafeEnabled {
		mi := &file_auth_service_proto_msgTypes[2]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *VerifyOtpReq) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*VerifyOtpReq) ProtoMessage() {}

func (x *VerifyOtpReq) ProtoReflect() protoreflect.Message {
	mi := &file_auth_service_proto_msgTypes[2]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use VerifyOtpReq.ProtoReflect.Descriptor instead.
func (*VerifyOtpReq) Descriptor() ([]byte, []int) {
	return file_auth_service_proto_rawDescGZIP(), []int{2}
}

func (x *VerifyOtpReq) GetOtpReqToken() string {
	if x != nil {
		return x.OtpReqToken
	}
	return ""
}

func (x *VerifyOtpReq) GetOtp() string {
	if x != nil {
		return x.Otp
	}
	return ""
}

type AccessToken struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Token          string                 `protobuf:"bytes,1,opt,name=token,proto3" json:"token,omitempty"`
	UserId         string                 `protobuf:"bytes,2,opt,name=userId,proto3" json:"userId,omitempty"`
	Scopes         []string               `protobuf:"bytes,3,rep,name=scopes,proto3" json:"scopes,omitempty"`
	ExpirationTime *timestamppb.Timestamp `protobuf:"bytes,4,opt,name=expirationTime,proto3" json:"expirationTime,omitempty"`
}

func (x *AccessToken) Reset() {
	*x = AccessToken{}
	if protoimpl.UnsafeEnabled {
		mi := &file_auth_service_proto_msgTypes[3]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *AccessToken) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*AccessToken) ProtoMessage() {}

func (x *AccessToken) ProtoReflect() protoreflect.Message {
	mi := &file_auth_service_proto_msgTypes[3]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use AccessToken.ProtoReflect.Descriptor instead.
func (*AccessToken) Descriptor() ([]byte, []int) {
	return file_auth_service_proto_rawDescGZIP(), []int{3}
}

func (x *AccessToken) GetToken() string {
	if x != nil {
		return x.Token
	}
	return ""
}

func (x *AccessToken) GetUserId() string {
	if x != nil {
		return x.UserId
	}
	return ""
}

func (x *AccessToken) GetScopes() []string {
	if x != nil {
		return x.Scopes
	}
	return nil
}

func (x *AccessToken) GetExpirationTime() *timestamppb.Timestamp {
	if x != nil {
		return x.ExpirationTime
	}
	return nil
}

type SessionToken struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Token          string                 `protobuf:"bytes,1,opt,name=token,proto3" json:"token,omitempty"`
	UserId         string                 `protobuf:"bytes,2,opt,name=userId,proto3" json:"userId,omitempty"`
	ExpirationTime *timestamppb.Timestamp `protobuf:"bytes,3,opt,name=expirationTime,proto3" json:"expirationTime,omitempty"`
}

func (x *SessionToken) Reset() {
	*x = SessionToken{}
	if protoimpl.UnsafeEnabled {
		mi := &file_auth_service_proto_msgTypes[4]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *SessionToken) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*SessionToken) ProtoMessage() {}

func (x *SessionToken) ProtoReflect() protoreflect.Message {
	mi := &file_auth_service_proto_msgTypes[4]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use SessionToken.ProtoReflect.Descriptor instead.
func (*SessionToken) Descriptor() ([]byte, []int) {
	return file_auth_service_proto_rawDescGZIP(), []int{4}
}

func (x *SessionToken) GetToken() string {
	if x != nil {
		return x.Token
	}
	return ""
}

func (x *SessionToken) GetUserId() string {
	if x != nil {
		return x.UserId
	}
	return ""
}

func (x *SessionToken) GetExpirationTime() *timestamppb.Timestamp {
	if x != nil {
		return x.ExpirationTime
	}
	return nil
}

var File_auth_service_proto protoreflect.FileDescriptor

var file_auth_service_proto_rawDesc = []byte{
	0x0a, 0x12, 0x61, 0x75, 0x74, 0x68, 0x5f, 0x73, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x2e, 0x70,
	0x72, 0x6f, 0x74, 0x6f, 0x1a, 0x1f, 0x67, 0x6f, 0x6f, 0x67, 0x6c, 0x65, 0x2f, 0x70, 0x72, 0x6f,
	0x74, 0x6f, 0x62, 0x75, 0x66, 0x2f, 0x74, 0x69, 0x6d, 0x65, 0x73, 0x74, 0x61, 0x6d, 0x70, 0x2e,
	0x70, 0x72, 0x6f, 0x74, 0x6f, 0x22, 0x2e, 0x0a, 0x0a, 0x53, 0x65, 0x6e, 0x64, 0x4f, 0x74, 0x70,
	0x52, 0x65, 0x71, 0x12, 0x20, 0x0a, 0x0b, 0x70, 0x68, 0x6f, 0x6e, 0x65, 0x4e, 0x75, 0x6d, 0x62,
	0x65, 0x72, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x0b, 0x70, 0x68, 0x6f, 0x6e, 0x65, 0x4e,
	0x75, 0x6d, 0x62, 0x65, 0x72, 0x22, 0x2f, 0x0a, 0x0b, 0x53, 0x65, 0x6e, 0x64, 0x4f, 0x74, 0x70,
	0x52, 0x65, 0x73, 0x70, 0x12, 0x20, 0x0a, 0x0b, 0x6f, 0x74, 0x70, 0x52, 0x65, 0x71, 0x54, 0x6f,
	0x6b, 0x65, 0x6e, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x0b, 0x6f, 0x74, 0x70, 0x52, 0x65,
	0x71, 0x54, 0x6f, 0x6b, 0x65, 0x6e, 0x22, 0x42, 0x0a, 0x0c, 0x56, 0x65, 0x72, 0x69, 0x66, 0x79,
	0x4f, 0x74, 0x70, 0x52, 0x65, 0x71, 0x12, 0x20, 0x0a, 0x0b, 0x6f, 0x74, 0x70, 0x52, 0x65, 0x71,
	0x54, 0x6f, 0x6b, 0x65, 0x6e, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x0b, 0x6f, 0x74, 0x70,
	0x52, 0x65, 0x71, 0x54, 0x6f, 0x6b, 0x65, 0x6e, 0x12, 0x10, 0x0a, 0x03, 0x6f, 0x74, 0x70, 0x18,
	0x02, 0x20, 0x01, 0x28, 0x09, 0x52, 0x03, 0x6f, 0x74, 0x70, 0x22, 0x97, 0x01, 0x0a, 0x0b, 0x41,
	0x63, 0x63, 0x65, 0x73, 0x73, 0x54, 0x6f, 0x6b, 0x65, 0x6e, 0x12, 0x14, 0x0a, 0x05, 0x74, 0x6f,
	0x6b, 0x65, 0x6e, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x05, 0x74, 0x6f, 0x6b, 0x65, 0x6e,
	0x12, 0x16, 0x0a, 0x06, 0x75, 0x73, 0x65, 0x72, 0x49, 0x64, 0x18, 0x02, 0x20, 0x01, 0x28, 0x09,
	0x52, 0x06, 0x75, 0x73, 0x65, 0x72, 0x49, 0x64, 0x12, 0x16, 0x0a, 0x06, 0x73, 0x63, 0x6f, 0x70,
	0x65, 0x73, 0x18, 0x03, 0x20, 0x03, 0x28, 0x09, 0x52, 0x06, 0x73, 0x63, 0x6f, 0x70, 0x65, 0x73,
	0x12, 0x42, 0x0a, 0x0e, 0x65, 0x78, 0x70, 0x69, 0x72, 0x61, 0x74, 0x69, 0x6f, 0x6e, 0x54, 0x69,
	0x6d, 0x65, 0x18, 0x04, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x1a, 0x2e, 0x67, 0x6f, 0x6f, 0x67, 0x6c,
	0x65, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x62, 0x75, 0x66, 0x2e, 0x54, 0x69, 0x6d, 0x65, 0x73,
	0x74, 0x61, 0x6d, 0x70, 0x52, 0x0e, 0x65, 0x78, 0x70, 0x69, 0x72, 0x61, 0x74, 0x69, 0x6f, 0x6e,
	0x54, 0x69, 0x6d, 0x65, 0x22, 0x80, 0x01, 0x0a, 0x0c, 0x53, 0x65, 0x73, 0x73, 0x69, 0x6f, 0x6e,
	0x54, 0x6f, 0x6b, 0x65, 0x6e, 0x12, 0x14, 0x0a, 0x05, 0x74, 0x6f, 0x6b, 0x65, 0x6e, 0x18, 0x01,
	0x20, 0x01, 0x28, 0x09, 0x52, 0x05, 0x74, 0x6f, 0x6b, 0x65, 0x6e, 0x12, 0x16, 0x0a, 0x06, 0x75,
	0x73, 0x65, 0x72, 0x49, 0x64, 0x18, 0x02, 0x20, 0x01, 0x28, 0x09, 0x52, 0x06, 0x75, 0x73, 0x65,
	0x72, 0x49, 0x64, 0x12, 0x42, 0x0a, 0x0e, 0x65, 0x78, 0x70, 0x69, 0x72, 0x61, 0x74, 0x69, 0x6f,
	0x6e, 0x54, 0x69, 0x6d, 0x65, 0x18, 0x03, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x1a, 0x2e, 0x67, 0x6f,
	0x6f, 0x67, 0x6c, 0x65, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x62, 0x75, 0x66, 0x2e, 0x54, 0x69,
	0x6d, 0x65, 0x73, 0x74, 0x61, 0x6d, 0x70, 0x52, 0x0e, 0x65, 0x78, 0x70, 0x69, 0x72, 0x61, 0x74,
	0x69, 0x6f, 0x6e, 0x54, 0x69, 0x6d, 0x65, 0x32, 0x8d, 0x01, 0x0a, 0x0b, 0x41, 0x75, 0x74, 0x68,
	0x53, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x12, 0x24, 0x0a, 0x07, 0x53, 0x65, 0x6e, 0x64, 0x4f,
	0x74, 0x70, 0x12, 0x0b, 0x2e, 0x53, 0x65, 0x6e, 0x64, 0x4f, 0x74, 0x70, 0x52, 0x65, 0x71, 0x1a,
	0x0c, 0x2e, 0x53, 0x65, 0x6e, 0x64, 0x4f, 0x74, 0x70, 0x52, 0x65, 0x73, 0x70, 0x12, 0x28, 0x0a,
	0x09, 0x56, 0x65, 0x72, 0x69, 0x66, 0x79, 0x4f, 0x74, 0x70, 0x12, 0x0d, 0x2e, 0x56, 0x65, 0x72,
	0x69, 0x66, 0x79, 0x4f, 0x74, 0x70, 0x52, 0x65, 0x71, 0x1a, 0x0c, 0x2e, 0x41, 0x63, 0x63, 0x65,
	0x73, 0x73, 0x54, 0x6f, 0x6b, 0x65, 0x6e, 0x12, 0x2e, 0x0a, 0x0f, 0x47, 0x65, 0x74, 0x53, 0x65,
	0x73, 0x73, 0x69, 0x6f, 0x6e, 0x54, 0x6f, 0x6b, 0x65, 0x6e, 0x12, 0x0c, 0x2e, 0x41, 0x63, 0x63,
	0x65, 0x73, 0x73, 0x54, 0x6f, 0x6b, 0x65, 0x6e, 0x1a, 0x0d, 0x2e, 0x53, 0x65, 0x73, 0x73, 0x69,
	0x6f, 0x6e, 0x54, 0x6f, 0x6b, 0x65, 0x6e, 0x42, 0x13, 0x5a, 0x11, 0x2e, 0x2f, 0x67, 0x6f, 0x2f,
	0x61, 0x75, 0x74, 0x68, 0x5f, 0x73, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x62, 0x06, 0x70, 0x72,
	0x6f, 0x74, 0x6f, 0x33,
}

var (
	file_auth_service_proto_rawDescOnce sync.Once
	file_auth_service_proto_rawDescData = file_auth_service_proto_rawDesc
)

func file_auth_service_proto_rawDescGZIP() []byte {
	file_auth_service_proto_rawDescOnce.Do(func() {
		file_auth_service_proto_rawDescData = protoimpl.X.CompressGZIP(file_auth_service_proto_rawDescData)
	})
	return file_auth_service_proto_rawDescData
}

var file_auth_service_proto_msgTypes = make([]protoimpl.MessageInfo, 5)
var file_auth_service_proto_goTypes = []interface{}{
	(*SendOtpReq)(nil),            // 0: SendOtpReq
	(*SendOtpResp)(nil),           // 1: SendOtpResp
	(*VerifyOtpReq)(nil),          // 2: VerifyOtpReq
	(*AccessToken)(nil),           // 3: AccessToken
	(*SessionToken)(nil),          // 4: SessionToken
	(*timestamppb.Timestamp)(nil), // 5: google.protobuf.Timestamp
}
var file_auth_service_proto_depIdxs = []int32{
	5, // 0: AccessToken.expirationTime:type_name -> google.protobuf.Timestamp
	5, // 1: SessionToken.expirationTime:type_name -> google.protobuf.Timestamp
	0, // 2: AuthService.SendOtp:input_type -> SendOtpReq
	2, // 3: AuthService.VerifyOtp:input_type -> VerifyOtpReq
	3, // 4: AuthService.GetSessionToken:input_type -> AccessToken
	1, // 5: AuthService.SendOtp:output_type -> SendOtpResp
	3, // 6: AuthService.VerifyOtp:output_type -> AccessToken
	4, // 7: AuthService.GetSessionToken:output_type -> SessionToken
	5, // [5:8] is the sub-list for method output_type
	2, // [2:5] is the sub-list for method input_type
	2, // [2:2] is the sub-list for extension type_name
	2, // [2:2] is the sub-list for extension extendee
	0, // [0:2] is the sub-list for field type_name
}

func init() { file_auth_service_proto_init() }
func file_auth_service_proto_init() {
	if File_auth_service_proto != nil {
		return
	}
	if !protoimpl.UnsafeEnabled {
		file_auth_service_proto_msgTypes[0].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*SendOtpReq); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_auth_service_proto_msgTypes[1].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*SendOtpResp); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_auth_service_proto_msgTypes[2].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*VerifyOtpReq); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_auth_service_proto_msgTypes[3].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*AccessToken); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_auth_service_proto_msgTypes[4].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*SessionToken); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
	}
	type x struct{}
	out := protoimpl.TypeBuilder{
		File: protoimpl.DescBuilder{
			GoPackagePath: reflect.TypeOf(x{}).PkgPath(),
			RawDescriptor: file_auth_service_proto_rawDesc,
			NumEnums:      0,
			NumMessages:   5,
			NumExtensions: 0,
			NumServices:   1,
		},
		GoTypes:           file_auth_service_proto_goTypes,
		DependencyIndexes: file_auth_service_proto_depIdxs,
		MessageInfos:      file_auth_service_proto_msgTypes,
	}.Build()
	File_auth_service_proto = out.File
	file_auth_service_proto_rawDesc = nil
	file_auth_service_proto_goTypes = nil
	file_auth_service_proto_depIdxs = nil
}
