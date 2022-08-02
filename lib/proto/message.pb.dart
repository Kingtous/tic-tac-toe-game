///
//  Generated code. Do not modify.
//  source: message.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class Hello extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Hello', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Chess'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'from')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'peerName')
    ..hasRequiredFields = false
  ;

  Hello._() : super();
  factory Hello({
    $core.String? from,
    $core.String? peerName,
  }) {
    final _result = create();
    if (from != null) {
      _result.from = from;
    }
    if (peerName != null) {
      _result.peerName = peerName;
    }
    return _result;
  }
  factory Hello.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Hello.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Hello clone() => Hello()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Hello copyWith(void Function(Hello) updates) => super.copyWith((message) => updates(message as Hello)) as Hello; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Hello create() => Hello._();
  Hello createEmptyInstance() => create();
  static $pb.PbList<Hello> createRepeated() => $pb.PbList<Hello>();
  @$core.pragma('dart2js:noInline')
  static Hello getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Hello>(create);
  static Hello? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get from => $_getSZ(0);
  @$pb.TagNumber(1)
  set from($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFrom() => $_has(0);
  @$pb.TagNumber(1)
  void clearFrom() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get peerName => $_getSZ(1);
  @$pb.TagNumber(2)
  set peerName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPeerName() => $_has(1);
  @$pb.TagNumber(2)
  void clearPeerName() => clearField(2);
}

class Bye extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Bye', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Chess'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'from')
    ..hasRequiredFields = false
  ;

  Bye._() : super();
  factory Bye({
    $core.String? from,
  }) {
    final _result = create();
    if (from != null) {
      _result.from = from;
    }
    return _result;
  }
  factory Bye.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Bye.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Bye clone() => Bye()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Bye copyWith(void Function(Bye) updates) => super.copyWith((message) => updates(message as Bye)) as Bye; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Bye create() => Bye._();
  Bye createEmptyInstance() => create();
  static $pb.PbList<Bye> createRepeated() => $pb.PbList<Bye>();
  @$core.pragma('dart2js:noInline')
  static Bye getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Bye>(create);
  static Bye? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get from => $_getSZ(0);
  @$pb.TagNumber(1)
  set from($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFrom() => $_has(0);
  @$pb.TagNumber(1)
  void clearFrom() => clearField(1);
}

class StartGame extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StartGame', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Chess'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gameId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  StartGame._() : super();
  factory StartGame({
    $fixnum.Int64? gameId,
  }) {
    final _result = create();
    if (gameId != null) {
      _result.gameId = gameId;
    }
    return _result;
  }
  factory StartGame.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StartGame.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StartGame clone() => StartGame()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StartGame copyWith(void Function(StartGame) updates) => super.copyWith((message) => updates(message as StartGame)) as StartGame; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StartGame create() => StartGame._();
  StartGame createEmptyInstance() => create();
  static $pb.PbList<StartGame> createRepeated() => $pb.PbList<StartGame>();
  @$core.pragma('dart2js:noInline')
  static StartGame getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StartGame>(create);
  static StartGame? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get gameId => $_getI64(0);
  @$pb.TagNumber(1)
  set gameId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGameId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGameId() => clearField(1);
}

class StartGameConfirm extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StartGameConfirm', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Chess'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gameId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  StartGameConfirm._() : super();
  factory StartGameConfirm({
    $fixnum.Int64? gameId,
  }) {
    final _result = create();
    if (gameId != null) {
      _result.gameId = gameId;
    }
    return _result;
  }
  factory StartGameConfirm.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StartGameConfirm.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StartGameConfirm clone() => StartGameConfirm()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StartGameConfirm copyWith(void Function(StartGameConfirm) updates) => super.copyWith((message) => updates(message as StartGameConfirm)) as StartGameConfirm; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StartGameConfirm create() => StartGameConfirm._();
  StartGameConfirm createEmptyInstance() => create();
  static $pb.PbList<StartGameConfirm> createRepeated() => $pb.PbList<StartGameConfirm>();
  @$core.pragma('dart2js:noInline')
  static StartGameConfirm getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StartGameConfirm>(create);
  static StartGameConfirm? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get gameId => $_getI64(0);
  @$pb.TagNumber(1)
  set gameId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGameId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGameId() => clearField(1);
}

enum Action_Union {
  do_1, 
  doConfirm, 
  declareWin, 
  declareWinConfirm, 
  startGame, 
  startGameConfirm, 
  hello, 
  bye, 
  noWin, 
  noWinConfirm, 
  notSet
}

class Action extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, Action_Union> _Action_UnionByTag = {
    1 : Action_Union.do_1,
    2 : Action_Union.doConfirm,
    3 : Action_Union.declareWin,
    4 : Action_Union.declareWinConfirm,
    5 : Action_Union.startGame,
    6 : Action_Union.startGameConfirm,
    7 : Action_Union.hello,
    8 : Action_Union.bye,
    9 : Action_Union.noWin,
    10 : Action_Union.noWinConfirm,
    0 : Action_Union.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Action', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Chess'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
    ..aOM<DoRequest>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'do', subBuilder: DoRequest.create)
    ..aOM<DoRequestConfirm>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'doConfirm', subBuilder: DoRequestConfirm.create)
    ..aOM<DeclareWin>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'declareWin', subBuilder: DeclareWin.create)
    ..aOM<DeclareWinConfirm>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'declareWinConfirm', subBuilder: DeclareWinConfirm.create)
    ..aOM<StartGame>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'startGame', subBuilder: StartGame.create)
    ..aOM<StartGameConfirm>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'startGameConfirm', subBuilder: StartGameConfirm.create)
    ..aOM<Hello>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hello', subBuilder: Hello.create)
    ..aOM<Bye>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bye', subBuilder: Bye.create)
    ..aOM<DeclareNoWin>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'noWin', subBuilder: DeclareNoWin.create)
    ..aOM<DeclareNoWinConfirm>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'noWinConfirm', subBuilder: DeclareNoWinConfirm.create)
    ..hasRequiredFields = false
  ;

  Action._() : super();
  factory Action({
    DoRequest? do_1,
    DoRequestConfirm? doConfirm,
    DeclareWin? declareWin,
    DeclareWinConfirm? declareWinConfirm,
    StartGame? startGame,
    StartGameConfirm? startGameConfirm,
    Hello? hello,
    Bye? bye,
    DeclareNoWin? noWin,
    DeclareNoWinConfirm? noWinConfirm,
  }) {
    final _result = create();
    if (do_1 != null) {
      _result.do_1 = do_1;
    }
    if (doConfirm != null) {
      _result.doConfirm = doConfirm;
    }
    if (declareWin != null) {
      _result.declareWin = declareWin;
    }
    if (declareWinConfirm != null) {
      _result.declareWinConfirm = declareWinConfirm;
    }
    if (startGame != null) {
      _result.startGame = startGame;
    }
    if (startGameConfirm != null) {
      _result.startGameConfirm = startGameConfirm;
    }
    if (hello != null) {
      _result.hello = hello;
    }
    if (bye != null) {
      _result.bye = bye;
    }
    if (noWin != null) {
      _result.noWin = noWin;
    }
    if (noWinConfirm != null) {
      _result.noWinConfirm = noWinConfirm;
    }
    return _result;
  }
  factory Action.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Action.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Action clone() => Action()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Action copyWith(void Function(Action) updates) => super.copyWith((message) => updates(message as Action)) as Action; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Action create() => Action._();
  Action createEmptyInstance() => create();
  static $pb.PbList<Action> createRepeated() => $pb.PbList<Action>();
  @$core.pragma('dart2js:noInline')
  static Action getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Action>(create);
  static Action? _defaultInstance;

  Action_Union whichUnion() => _Action_UnionByTag[$_whichOneof(0)]!;
  void clearUnion() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  DoRequest get do_1 => $_getN(0);
  @$pb.TagNumber(1)
  set do_1(DoRequest v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasDo_1() => $_has(0);
  @$pb.TagNumber(1)
  void clearDo_1() => clearField(1);
  @$pb.TagNumber(1)
  DoRequest ensureDo_1() => $_ensure(0);

  @$pb.TagNumber(2)
  DoRequestConfirm get doConfirm => $_getN(1);
  @$pb.TagNumber(2)
  set doConfirm(DoRequestConfirm v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasDoConfirm() => $_has(1);
  @$pb.TagNumber(2)
  void clearDoConfirm() => clearField(2);
  @$pb.TagNumber(2)
  DoRequestConfirm ensureDoConfirm() => $_ensure(1);

  @$pb.TagNumber(3)
  DeclareWin get declareWin => $_getN(2);
  @$pb.TagNumber(3)
  set declareWin(DeclareWin v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasDeclareWin() => $_has(2);
  @$pb.TagNumber(3)
  void clearDeclareWin() => clearField(3);
  @$pb.TagNumber(3)
  DeclareWin ensureDeclareWin() => $_ensure(2);

  @$pb.TagNumber(4)
  DeclareWinConfirm get declareWinConfirm => $_getN(3);
  @$pb.TagNumber(4)
  set declareWinConfirm(DeclareWinConfirm v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasDeclareWinConfirm() => $_has(3);
  @$pb.TagNumber(4)
  void clearDeclareWinConfirm() => clearField(4);
  @$pb.TagNumber(4)
  DeclareWinConfirm ensureDeclareWinConfirm() => $_ensure(3);

  @$pb.TagNumber(5)
  StartGame get startGame => $_getN(4);
  @$pb.TagNumber(5)
  set startGame(StartGame v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasStartGame() => $_has(4);
  @$pb.TagNumber(5)
  void clearStartGame() => clearField(5);
  @$pb.TagNumber(5)
  StartGame ensureStartGame() => $_ensure(4);

  @$pb.TagNumber(6)
  StartGameConfirm get startGameConfirm => $_getN(5);
  @$pb.TagNumber(6)
  set startGameConfirm(StartGameConfirm v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasStartGameConfirm() => $_has(5);
  @$pb.TagNumber(6)
  void clearStartGameConfirm() => clearField(6);
  @$pb.TagNumber(6)
  StartGameConfirm ensureStartGameConfirm() => $_ensure(5);

  @$pb.TagNumber(7)
  Hello get hello => $_getN(6);
  @$pb.TagNumber(7)
  set hello(Hello v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasHello() => $_has(6);
  @$pb.TagNumber(7)
  void clearHello() => clearField(7);
  @$pb.TagNumber(7)
  Hello ensureHello() => $_ensure(6);

  @$pb.TagNumber(8)
  Bye get bye => $_getN(7);
  @$pb.TagNumber(8)
  set bye(Bye v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasBye() => $_has(7);
  @$pb.TagNumber(8)
  void clearBye() => clearField(8);
  @$pb.TagNumber(8)
  Bye ensureBye() => $_ensure(7);

  @$pb.TagNumber(9)
  DeclareNoWin get noWin => $_getN(8);
  @$pb.TagNumber(9)
  set noWin(DeclareNoWin v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasNoWin() => $_has(8);
  @$pb.TagNumber(9)
  void clearNoWin() => clearField(9);
  @$pb.TagNumber(9)
  DeclareNoWin ensureNoWin() => $_ensure(8);

  @$pb.TagNumber(10)
  DeclareNoWinConfirm get noWinConfirm => $_getN(9);
  @$pb.TagNumber(10)
  set noWinConfirm(DeclareNoWinConfirm v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasNoWinConfirm() => $_has(9);
  @$pb.TagNumber(10)
  void clearNoWinConfirm() => clearField(10);
  @$pb.TagNumber(10)
  DeclareNoWinConfirm ensureNoWinConfirm() => $_ensure(9);
}

class DoRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DoRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Chess'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'x', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'y', $pb.PbFieldType.OU3)
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'press')
    ..hasRequiredFields = false
  ;

  DoRequest._() : super();
  factory DoRequest({
    $fixnum.Int64? id,
    $core.int? x,
    $core.int? y,
    $core.bool? press,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (x != null) {
      _result.x = x;
    }
    if (y != null) {
      _result.y = y;
    }
    if (press != null) {
      _result.press = press;
    }
    return _result;
  }
  factory DoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DoRequest clone() => DoRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DoRequest copyWith(void Function(DoRequest) updates) => super.copyWith((message) => updates(message as DoRequest)) as DoRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DoRequest create() => DoRequest._();
  DoRequest createEmptyInstance() => create();
  static $pb.PbList<DoRequest> createRepeated() => $pb.PbList<DoRequest>();
  @$core.pragma('dart2js:noInline')
  static DoRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DoRequest>(create);
  static DoRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get x => $_getIZ(1);
  @$pb.TagNumber(2)
  set x($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasX() => $_has(1);
  @$pb.TagNumber(2)
  void clearX() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get y => $_getIZ(2);
  @$pb.TagNumber(3)
  set y($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasY() => $_has(2);
  @$pb.TagNumber(3)
  void clearY() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get press => $_getBF(3);
  @$pb.TagNumber(4)
  set press($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPress() => $_has(3);
  @$pb.TagNumber(4)
  void clearPress() => clearField(4);
}

class DoRequestConfirm extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DoRequestConfirm', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Chess'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accept')
    ..hasRequiredFields = false
  ;

  DoRequestConfirm._() : super();
  factory DoRequestConfirm({
    $fixnum.Int64? id,
    $core.bool? accept,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (accept != null) {
      _result.accept = accept;
    }
    return _result;
  }
  factory DoRequestConfirm.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DoRequestConfirm.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DoRequestConfirm clone() => DoRequestConfirm()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DoRequestConfirm copyWith(void Function(DoRequestConfirm) updates) => super.copyWith((message) => updates(message as DoRequestConfirm)) as DoRequestConfirm; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DoRequestConfirm create() => DoRequestConfirm._();
  DoRequestConfirm createEmptyInstance() => create();
  static $pb.PbList<DoRequestConfirm> createRepeated() => $pb.PbList<DoRequestConfirm>();
  @$core.pragma('dart2js:noInline')
  static DoRequestConfirm getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DoRequestConfirm>(create);
  static DoRequestConfirm? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get accept => $_getBF(1);
  @$pb.TagNumber(2)
  set accept($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAccept() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccept() => clearField(2);
}

class DeclareWin extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeclareWin', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Chess'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gameId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  DeclareWin._() : super();
  factory DeclareWin({
    $fixnum.Int64? gameId,
  }) {
    final _result = create();
    if (gameId != null) {
      _result.gameId = gameId;
    }
    return _result;
  }
  factory DeclareWin.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeclareWin.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeclareWin clone() => DeclareWin()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeclareWin copyWith(void Function(DeclareWin) updates) => super.copyWith((message) => updates(message as DeclareWin)) as DeclareWin; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeclareWin create() => DeclareWin._();
  DeclareWin createEmptyInstance() => create();
  static $pb.PbList<DeclareWin> createRepeated() => $pb.PbList<DeclareWin>();
  @$core.pragma('dart2js:noInline')
  static DeclareWin getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeclareWin>(create);
  static DeclareWin? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get gameId => $_getI64(0);
  @$pb.TagNumber(1)
  set gameId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGameId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGameId() => clearField(1);
}

class DeclareWinConfirm extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeclareWinConfirm', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Chess'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'confirmGameId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accept')
    ..hasRequiredFields = false
  ;

  DeclareWinConfirm._() : super();
  factory DeclareWinConfirm({
    $fixnum.Int64? confirmGameId,
    $core.bool? accept,
  }) {
    final _result = create();
    if (confirmGameId != null) {
      _result.confirmGameId = confirmGameId;
    }
    if (accept != null) {
      _result.accept = accept;
    }
    return _result;
  }
  factory DeclareWinConfirm.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeclareWinConfirm.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeclareWinConfirm clone() => DeclareWinConfirm()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeclareWinConfirm copyWith(void Function(DeclareWinConfirm) updates) => super.copyWith((message) => updates(message as DeclareWinConfirm)) as DeclareWinConfirm; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeclareWinConfirm create() => DeclareWinConfirm._();
  DeclareWinConfirm createEmptyInstance() => create();
  static $pb.PbList<DeclareWinConfirm> createRepeated() => $pb.PbList<DeclareWinConfirm>();
  @$core.pragma('dart2js:noInline')
  static DeclareWinConfirm getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeclareWinConfirm>(create);
  static DeclareWinConfirm? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get confirmGameId => $_getI64(0);
  @$pb.TagNumber(1)
  set confirmGameId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasConfirmGameId() => $_has(0);
  @$pb.TagNumber(1)
  void clearConfirmGameId() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get accept => $_getBF(1);
  @$pb.TagNumber(2)
  set accept($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAccept() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccept() => clearField(2);
}

class BroadcastMsg extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BroadcastMsg', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Chess'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ip')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..hasRequiredFields = false
  ;

  BroadcastMsg._() : super();
  factory BroadcastMsg({
    $core.String? ip,
    $core.String? name,
  }) {
    final _result = create();
    if (ip != null) {
      _result.ip = ip;
    }
    if (name != null) {
      _result.name = name;
    }
    return _result;
  }
  factory BroadcastMsg.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BroadcastMsg.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BroadcastMsg clone() => BroadcastMsg()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BroadcastMsg copyWith(void Function(BroadcastMsg) updates) => super.copyWith((message) => updates(message as BroadcastMsg)) as BroadcastMsg; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BroadcastMsg create() => BroadcastMsg._();
  BroadcastMsg createEmptyInstance() => create();
  static $pb.PbList<BroadcastMsg> createRepeated() => $pb.PbList<BroadcastMsg>();
  @$core.pragma('dart2js:noInline')
  static BroadcastMsg getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BroadcastMsg>(create);
  static BroadcastMsg? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get ip => $_getSZ(0);
  @$pb.TagNumber(1)
  set ip($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIp() => $_has(0);
  @$pb.TagNumber(1)
  void clearIp() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);
}

class DeclareNoWin extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeclareNoWin', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Chess'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gameId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  DeclareNoWin._() : super();
  factory DeclareNoWin({
    $fixnum.Int64? gameId,
  }) {
    final _result = create();
    if (gameId != null) {
      _result.gameId = gameId;
    }
    return _result;
  }
  factory DeclareNoWin.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeclareNoWin.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeclareNoWin clone() => DeclareNoWin()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeclareNoWin copyWith(void Function(DeclareNoWin) updates) => super.copyWith((message) => updates(message as DeclareNoWin)) as DeclareNoWin; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeclareNoWin create() => DeclareNoWin._();
  DeclareNoWin createEmptyInstance() => create();
  static $pb.PbList<DeclareNoWin> createRepeated() => $pb.PbList<DeclareNoWin>();
  @$core.pragma('dart2js:noInline')
  static DeclareNoWin getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeclareNoWin>(create);
  static DeclareNoWin? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get gameId => $_getI64(0);
  @$pb.TagNumber(1)
  set gameId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGameId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGameId() => clearField(1);
}

class DeclareNoWinConfirm extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeclareNoWinConfirm', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Chess'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gameId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  DeclareNoWinConfirm._() : super();
  factory DeclareNoWinConfirm({
    $fixnum.Int64? gameId,
  }) {
    final _result = create();
    if (gameId != null) {
      _result.gameId = gameId;
    }
    return _result;
  }
  factory DeclareNoWinConfirm.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeclareNoWinConfirm.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeclareNoWinConfirm clone() => DeclareNoWinConfirm()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeclareNoWinConfirm copyWith(void Function(DeclareNoWinConfirm) updates) => super.copyWith((message) => updates(message as DeclareNoWinConfirm)) as DeclareNoWinConfirm; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeclareNoWinConfirm create() => DeclareNoWinConfirm._();
  DeclareNoWinConfirm createEmptyInstance() => create();
  static $pb.PbList<DeclareNoWinConfirm> createRepeated() => $pb.PbList<DeclareNoWinConfirm>();
  @$core.pragma('dart2js:noInline')
  static DeclareNoWinConfirm getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeclareNoWinConfirm>(create);
  static DeclareNoWinConfirm? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get gameId => $_getI64(0);
  @$pb.TagNumber(1)
  set gameId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGameId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGameId() => clearField(1);
}

