///
//  Generated code. Do not modify.
//  source: message.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use helloDescriptor instead')
const Hello$json = const {
  '1': 'Hello',
  '2': const [
    const {'1': 'from', '3': 1, '4': 1, '5': 9, '10': 'from'},
    const {'1': 'peer_name', '3': 2, '4': 1, '5': 9, '10': 'peerName'},
  ],
};

/// Descriptor for `Hello`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List helloDescriptor = $convert.base64Decode('CgVIZWxsbxISCgRmcm9tGAEgASgJUgRmcm9tEhsKCXBlZXJfbmFtZRgCIAEoCVIIcGVlck5hbWU=');
@$core.Deprecated('Use byeDescriptor instead')
const Bye$json = const {
  '1': 'Bye',
  '2': const [
    const {'1': 'from', '3': 1, '4': 1, '5': 9, '10': 'from'},
  ],
};

/// Descriptor for `Bye`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List byeDescriptor = $convert.base64Decode('CgNCeWUSEgoEZnJvbRgBIAEoCVIEZnJvbQ==');
@$core.Deprecated('Use startGameDescriptor instead')
const StartGame$json = const {
  '1': 'StartGame',
  '2': const [
    const {'1': 'game_id', '3': 1, '4': 1, '5': 4, '10': 'gameId'},
  ],
};

/// Descriptor for `StartGame`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List startGameDescriptor = $convert.base64Decode('CglTdGFydEdhbWUSFwoHZ2FtZV9pZBgBIAEoBFIGZ2FtZUlk');
@$core.Deprecated('Use startGameConfirmDescriptor instead')
const StartGameConfirm$json = const {
  '1': 'StartGameConfirm',
  '2': const [
    const {'1': 'game_id', '3': 1, '4': 1, '5': 4, '10': 'gameId'},
  ],
};

/// Descriptor for `StartGameConfirm`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List startGameConfirmDescriptor = $convert.base64Decode('ChBTdGFydEdhbWVDb25maXJtEhcKB2dhbWVfaWQYASABKARSBmdhbWVJZA==');
@$core.Deprecated('Use actionDescriptor instead')
const Action$json = const {
  '1': 'Action',
  '2': const [
    const {'1': 'do', '3': 1, '4': 1, '5': 11, '6': '.Chess.DoRequest', '9': 0, '10': 'do'},
    const {'1': 'do_confirm', '3': 2, '4': 1, '5': 11, '6': '.Chess.DoRequestConfirm', '9': 0, '10': 'doConfirm'},
    const {'1': 'declare_win', '3': 3, '4': 1, '5': 11, '6': '.Chess.DeclareWin', '9': 0, '10': 'declareWin'},
    const {'1': 'declare_win_confirm', '3': 4, '4': 1, '5': 11, '6': '.Chess.DeclareWinConfirm', '9': 0, '10': 'declareWinConfirm'},
    const {'1': 'start_game', '3': 5, '4': 1, '5': 11, '6': '.Chess.StartGame', '9': 0, '10': 'startGame'},
    const {'1': 'start_game_confirm', '3': 6, '4': 1, '5': 11, '6': '.Chess.StartGameConfirm', '9': 0, '10': 'startGameConfirm'},
    const {'1': 'hello', '3': 7, '4': 1, '5': 11, '6': '.Chess.Hello', '9': 0, '10': 'hello'},
    const {'1': 'bye', '3': 8, '4': 1, '5': 11, '6': '.Chess.Bye', '9': 0, '10': 'bye'},
    const {'1': 'no_win', '3': 9, '4': 1, '5': 11, '6': '.Chess.DeclareNoWin', '9': 0, '10': 'noWin'},
    const {'1': 'no_win_confirm', '3': 10, '4': 1, '5': 11, '6': '.Chess.DeclareNoWinConfirm', '9': 0, '10': 'noWinConfirm'},
  ],
  '8': const [
    const {'1': 'union'},
  ],
};

/// Descriptor for `Action`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List actionDescriptor = $convert.base64Decode('CgZBY3Rpb24SIgoCZG8YASABKAsyEC5DaGVzcy5Eb1JlcXVlc3RIAFICZG8SOAoKZG9fY29uZmlybRgCIAEoCzIXLkNoZXNzLkRvUmVxdWVzdENvbmZpcm1IAFIJZG9Db25maXJtEjQKC2RlY2xhcmVfd2luGAMgASgLMhEuQ2hlc3MuRGVjbGFyZVdpbkgAUgpkZWNsYXJlV2luEkoKE2RlY2xhcmVfd2luX2NvbmZpcm0YBCABKAsyGC5DaGVzcy5EZWNsYXJlV2luQ29uZmlybUgAUhFkZWNsYXJlV2luQ29uZmlybRIxCgpzdGFydF9nYW1lGAUgASgLMhAuQ2hlc3MuU3RhcnRHYW1lSABSCXN0YXJ0R2FtZRJHChJzdGFydF9nYW1lX2NvbmZpcm0YBiABKAsyFy5DaGVzcy5TdGFydEdhbWVDb25maXJtSABSEHN0YXJ0R2FtZUNvbmZpcm0SJAoFaGVsbG8YByABKAsyDC5DaGVzcy5IZWxsb0gAUgVoZWxsbxIeCgNieWUYCCABKAsyCi5DaGVzcy5CeWVIAFIDYnllEiwKBm5vX3dpbhgJIAEoCzITLkNoZXNzLkRlY2xhcmVOb1dpbkgAUgVub1dpbhJCCg5ub193aW5fY29uZmlybRgKIAEoCzIaLkNoZXNzLkRlY2xhcmVOb1dpbkNvbmZpcm1IAFIMbm9XaW5Db25maXJtQgcKBXVuaW9u');
@$core.Deprecated('Use doRequestDescriptor instead')
const DoRequest$json = const {
  '1': 'DoRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    const {'1': 'x', '3': 2, '4': 1, '5': 13, '10': 'x'},
    const {'1': 'y', '3': 3, '4': 1, '5': 13, '10': 'y'},
    const {'1': 'press', '3': 4, '4': 1, '5': 8, '10': 'press'},
  ],
};

/// Descriptor for `DoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List doRequestDescriptor = $convert.base64Decode('CglEb1JlcXVlc3QSDgoCaWQYASABKARSAmlkEgwKAXgYAiABKA1SAXgSDAoBeRgDIAEoDVIBeRIUCgVwcmVzcxgEIAEoCFIFcHJlc3M=');
@$core.Deprecated('Use doRequestConfirmDescriptor instead')
const DoRequestConfirm$json = const {
  '1': 'DoRequestConfirm',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    const {'1': 'accept', '3': 2, '4': 1, '5': 8, '10': 'accept'},
  ],
};

/// Descriptor for `DoRequestConfirm`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List doRequestConfirmDescriptor = $convert.base64Decode('ChBEb1JlcXVlc3RDb25maXJtEg4KAmlkGAEgASgEUgJpZBIWCgZhY2NlcHQYAiABKAhSBmFjY2VwdA==');
@$core.Deprecated('Use declareWinDescriptor instead')
const DeclareWin$json = const {
  '1': 'DeclareWin',
  '2': const [
    const {'1': 'game_id', '3': 1, '4': 1, '5': 4, '10': 'gameId'},
  ],
};

/// Descriptor for `DeclareWin`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List declareWinDescriptor = $convert.base64Decode('CgpEZWNsYXJlV2luEhcKB2dhbWVfaWQYASABKARSBmdhbWVJZA==');
@$core.Deprecated('Use declareWinConfirmDescriptor instead')
const DeclareWinConfirm$json = const {
  '1': 'DeclareWinConfirm',
  '2': const [
    const {'1': 'confirm_game_id', '3': 1, '4': 1, '5': 4, '10': 'confirmGameId'},
    const {'1': 'accept', '3': 2, '4': 1, '5': 8, '10': 'accept'},
  ],
};

/// Descriptor for `DeclareWinConfirm`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List declareWinConfirmDescriptor = $convert.base64Decode('ChFEZWNsYXJlV2luQ29uZmlybRImCg9jb25maXJtX2dhbWVfaWQYASABKARSDWNvbmZpcm1HYW1lSWQSFgoGYWNjZXB0GAIgASgIUgZhY2NlcHQ=');
@$core.Deprecated('Use broadcastMsgDescriptor instead')
const BroadcastMsg$json = const {
  '1': 'BroadcastMsg',
  '2': const [
    const {'1': 'ip', '3': 1, '4': 1, '5': 9, '10': 'ip'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `BroadcastMsg`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List broadcastMsgDescriptor = $convert.base64Decode('CgxCcm9hZGNhc3RNc2cSDgoCaXAYASABKAlSAmlwEhIKBG5hbWUYAiABKAlSBG5hbWU=');
@$core.Deprecated('Use declareNoWinDescriptor instead')
const DeclareNoWin$json = const {
  '1': 'DeclareNoWin',
  '2': const [
    const {'1': 'game_id', '3': 1, '4': 1, '5': 4, '10': 'gameId'},
  ],
};

/// Descriptor for `DeclareNoWin`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List declareNoWinDescriptor = $convert.base64Decode('CgxEZWNsYXJlTm9XaW4SFwoHZ2FtZV9pZBgBIAEoBFIGZ2FtZUlk');
@$core.Deprecated('Use declareNoWinConfirmDescriptor instead')
const DeclareNoWinConfirm$json = const {
  '1': 'DeclareNoWinConfirm',
  '2': const [
    const {'1': 'game_id', '3': 1, '4': 1, '5': 4, '10': 'gameId'},
  ],
};

/// Descriptor for `DeclareNoWinConfirm`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List declareNoWinConfirmDescriptor = $convert.base64Decode('ChNEZWNsYXJlTm9XaW5Db25maXJtEhcKB2dhbWVfaWQYASABKARSBmdhbWVJZA==');
