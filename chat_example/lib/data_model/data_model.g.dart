// GENERATED CODE - DO NOT MODIFY BY HAND

part of data_model;

// **************************************************************************
// Generator: BuiltValueGenerator
// Target: library data_model
// **************************************************************************

const StatusType _$online = const StatusType._('online');
const StatusType _$away = const StatusType._('away');
const StatusType _$offline = const StatusType._('offline');

StatusType _$stValueOf(String name) {
  switch (name) {
    case 'online':
      return _$online;
    case 'away':
      return _$away;
    case 'offline':
      return _$offline;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<StatusType> _$stValues =
    new BuiltSet<StatusType>(const <StatusType>[
  _$online,
  _$away,
  _$offline,
]);

const LoginResponse _$success = const LoginResponse._('success');
const LoginResponse _$badPassword = const LoginResponse._('badPassword');
const LoginResponse _$reset = const LoginResponse._('reset');

LoginResponse _$lrValueOf(String name) {
  switch (name) {
    case 'success':
      return _$success;
    case 'badPassword':
      return _$badPassword;
    case 'reset':
      return _$reset;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<LoginResponse> _$lrValues =
    new BuiltSet<LoginResponse>(const <LoginResponse>[
  _$success,
  _$badPassword,
  _$reset,
]);

Serializer<Chat> _$chatSerializer = new _$ChatSerializer();
Serializer<Login> _$loginSerializer = new _$LoginSerializer();
Serializer<Status> _$statusSerializer = new _$StatusSerializer();
Serializer<StatusType> _$statusTypeSerializer = new _$StatusTypeSerializer();
Serializer<ListUsers> _$listUsersSerializer = new _$ListUsersSerializer();
Serializer<LoginResponse> _$loginResponseSerializer =
    new _$LoginResponseSerializer();
Serializer<ShowChat> _$showChatSerializer = new _$ShowChatSerializer();
Serializer<Welcome> _$welcomeSerializer = new _$WelcomeSerializer();
Serializer<ListUsersResponse> _$listUsersResponseSerializer =
    new _$ListUsersResponseSerializer();

class _$ChatSerializer implements StructuredSerializer<Chat> {
  @override
  final Iterable<Type> types = const [Chat, _$Chat];
  @override
  final String wireName = 'Chat';

  @override
  Iterable serialize(Serializers serializers, Chat object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[
      'text',
      serializers.serialize(object.text, specifiedType: const FullType(String)),
      'targets',
      serializers.serialize(object.targets,
          specifiedType:
              const FullType(BuiltSet, const [const FullType(String)])),
    ];

    return result;
  }

  @override
  Chat deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new ChatBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'targets':
          result.targets.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltSet, const [const FullType(String)]))
              as BuiltSet<String>);
          break;
      }
    }

    return result.build();
  }
}

class _$LoginSerializer implements StructuredSerializer<Login> {
  @override
  final Iterable<Type> types = const [Login, _$Login];
  @override
  final String wireName = 'Login';

  @override
  Iterable serialize(Serializers serializers, Login object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
      'password',
      serializers.serialize(object.password,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Login deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new LoginBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$StatusSerializer implements StructuredSerializer<Status> {
  @override
  final Iterable<Type> types = const [Status, _$Status];
  @override
  final String wireName = 'Status';

  @override
  Iterable serialize(Serializers serializers, Status object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
      'type',
      serializers.serialize(object.type,
          specifiedType: const FullType(StatusType)),
    ];

    return result;
  }

  @override
  Status deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new StatusBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(StatusType)) as StatusType;
          break;
      }
    }

    return result.build();
  }
}

class _$StatusTypeSerializer implements PrimitiveSerializer<StatusType> {
  @override
  final Iterable<Type> types = const <Type>[StatusType];
  @override
  final String wireName = 'StatusType';

  @override
  Object serialize(Serializers serializers, StatusType object,
          {FullType specifiedType: FullType.unspecified}) =>
      object.name;

  @override
  StatusType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType: FullType.unspecified}) =>
      StatusType.valueOf(serialized as String);
}

class _$ListUsersSerializer implements StructuredSerializer<ListUsers> {
  @override
  final Iterable<Type> types = const [ListUsers, _$ListUsers];
  @override
  final String wireName = 'ListUsers';

  @override
  Iterable serialize(Serializers serializers, ListUsers object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[
      'statusTypes',
      serializers.serialize(object.statusTypes,
          specifiedType:
              const FullType(BuiltSet, const [const FullType(StatusType)])),
    ];

    return result;
  }

  @override
  ListUsers deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new ListUsersBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'statusTypes':
          result.statusTypes.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltSet, const [const FullType(StatusType)]))
              as BuiltSet<StatusType>);
          break;
      }
    }

    return result.build();
  }
}

class _$LoginResponseSerializer implements PrimitiveSerializer<LoginResponse> {
  @override
  final Iterable<Type> types = const <Type>[LoginResponse];
  @override
  final String wireName = 'LoginResponse';

  @override
  Object serialize(Serializers serializers, LoginResponse object,
          {FullType specifiedType: FullType.unspecified}) =>
      object.name;

  @override
  LoginResponse deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType: FullType.unspecified}) =>
      LoginResponse.valueOf(serialized as String);
}

class _$ShowChatSerializer implements StructuredSerializer<ShowChat> {
  @override
  final Iterable<Type> types = const [ShowChat, _$ShowChat];
  @override
  final String wireName = 'ShowChat';

  @override
  Iterable serialize(Serializers serializers, ShowChat object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
      'private',
      serializers.serialize(object.private,
          specifiedType: const FullType(bool)),
      'text',
      serializers.serialize(object.text, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  ShowChat deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new ShowChatBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'private':
          result.private = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$WelcomeSerializer implements StructuredSerializer<Welcome> {
  @override
  final Iterable<Type> types = const [Welcome, _$Welcome];
  @override
  final String wireName = 'Welcome';

  @override
  Iterable serialize(Serializers serializers, Welcome object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[
      'log',
      serializers.serialize(object.log,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Response)])),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Welcome deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new WelcomeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'log':
          result.log.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Response)]))
              as BuiltList<Response>);
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ListUsersResponseSerializer
    implements StructuredSerializer<ListUsersResponse> {
  @override
  final Iterable<Type> types = const [ListUsersResponse, _$ListUsersResponse];
  @override
  final String wireName = 'ListUsersResponse';

  @override
  Iterable serialize(Serializers serializers, ListUsersResponse object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[
      'statuses',
      serializers.serialize(object.statuses,
          specifiedType: const FullType(BuiltMap,
              const [const FullType(String), const FullType(Status)])),
    ];

    return result;
  }

  @override
  ListUsersResponse deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new ListUsersResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'statuses':
          result.statuses.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(String),
                const FullType(Status)
              ])) as BuiltMap<String, Status>);
          break;
      }
    }

    return result.build();
  }
}

// **************************************************************************
// Generator: BuiltValueGenerator
// Target: abstract class Chat
// **************************************************************************

class _$Chat extends Chat {
  @override
  final String text;
  @override
  final BuiltSet<String> targets;

  factory _$Chat([void updates(ChatBuilder b)]) =>
      (new ChatBuilder()..update(updates)).build();

  _$Chat._({this.text, this.targets}) : super._() {
    if (text == null) throw new ArgumentError.notNull('text');
    if (targets == null) throw new ArgumentError.notNull('targets');
  }

  @override
  Chat rebuild(void updates(ChatBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ChatBuilder toBuilder() => new ChatBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! Chat) return false;
    return text == other.text && targets == other.targets;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, text.hashCode), targets.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Chat')
          ..add('text', text)
          ..add('targets', targets))
        .toString();
  }
}

class ChatBuilder implements Builder<Chat, ChatBuilder> {
  _$Chat _$v;

  String _text;
  String get text => _$this._text;
  set text(String text) => _$this._text = text;

  SetBuilder<String> _targets;
  SetBuilder<String> get targets =>
      _$this._targets ??= new SetBuilder<String>();
  set targets(SetBuilder<String> targets) => _$this._targets = targets;

  ChatBuilder();

  ChatBuilder get _$this {
    if (_$v != null) {
      _text = _$v.text;
      _targets = _$v.targets?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Chat other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$Chat;
  }

  @override
  void update(void updates(ChatBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Chat build() {
    final result = _$v ?? new _$Chat._(text: text, targets: targets?.build());
    replace(result);
    return result;
  }
}

// **************************************************************************
// Generator: BuiltValueGenerator
// Target: abstract class Login
// **************************************************************************

class _$Login extends Login {
  @override
  final String username;
  @override
  final String password;

  factory _$Login([void updates(LoginBuilder b)]) =>
      (new LoginBuilder()..update(updates)).build();

  _$Login._({this.username, this.password}) : super._() {
    if (username == null) throw new ArgumentError.notNull('username');
    if (password == null) throw new ArgumentError.notNull('password');
  }

  @override
  Login rebuild(void updates(LoginBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginBuilder toBuilder() => new LoginBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! Login) return false;
    return username == other.username && password == other.password;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, username.hashCode), password.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Login')
          ..add('username', username)
          ..add('password', password))
        .toString();
  }
}

class LoginBuilder implements Builder<Login, LoginBuilder> {
  _$Login _$v;

  String _username;
  String get username => _$this._username;
  set username(String username) => _$this._username = username;

  String _password;
  String get password => _$this._password;
  set password(String password) => _$this._password = password;

  LoginBuilder();

  LoginBuilder get _$this {
    if (_$v != null) {
      _username = _$v.username;
      _password = _$v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Login other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$Login;
  }

  @override
  void update(void updates(LoginBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Login build() {
    final result = _$v ?? new _$Login._(username: username, password: password);
    replace(result);
    return result;
  }
}

// **************************************************************************
// Generator: BuiltValueGenerator
// Target: abstract class Status
// **************************************************************************

class _$Status extends Status {
  @override
  final String message;
  @override
  final StatusType type;

  factory _$Status([void updates(StatusBuilder b)]) =>
      (new StatusBuilder()..update(updates)).build();

  _$Status._({this.message, this.type}) : super._() {
    if (message == null) throw new ArgumentError.notNull('message');
    if (type == null) throw new ArgumentError.notNull('type');
  }

  @override
  Status rebuild(void updates(StatusBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  StatusBuilder toBuilder() => new StatusBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! Status) return false;
    return message == other.message && type == other.type;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, message.hashCode), type.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Status')
          ..add('message', message)
          ..add('type', type))
        .toString();
  }
}

class StatusBuilder implements Builder<Status, StatusBuilder> {
  _$Status _$v;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  StatusType _type;
  StatusType get type => _$this._type;
  set type(StatusType type) => _$this._type = type;

  StatusBuilder();

  StatusBuilder get _$this {
    if (_$v != null) {
      _message = _$v.message;
      _type = _$v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Status other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$Status;
  }

  @override
  void update(void updates(StatusBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Status build() {
    final result = _$v ?? new _$Status._(message: message, type: type);
    replace(result);
    return result;
  }
}

// **************************************************************************
// Generator: BuiltValueGenerator
// Target: abstract class ListUsers
// **************************************************************************

class _$ListUsers extends ListUsers {
  @override
  final BuiltSet<StatusType> statusTypes;

  factory _$ListUsers([void updates(ListUsersBuilder b)]) =>
      (new ListUsersBuilder()..update(updates)).build();

  _$ListUsers._({this.statusTypes}) : super._() {
    if (statusTypes == null) throw new ArgumentError.notNull('statusTypes');
  }

  @override
  ListUsers rebuild(void updates(ListUsersBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ListUsersBuilder toBuilder() => new ListUsersBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! ListUsers) return false;
    return statusTypes == other.statusTypes;
  }

  @override
  int get hashCode {
    return $jf($jc(0, statusTypes.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ListUsers')
          ..add('statusTypes', statusTypes))
        .toString();
  }
}

class ListUsersBuilder implements Builder<ListUsers, ListUsersBuilder> {
  _$ListUsers _$v;

  SetBuilder<StatusType> _statusTypes;
  SetBuilder<StatusType> get statusTypes =>
      _$this._statusTypes ??= new SetBuilder<StatusType>();
  set statusTypes(SetBuilder<StatusType> statusTypes) =>
      _$this._statusTypes = statusTypes;

  ListUsersBuilder();

  ListUsersBuilder get _$this {
    if (_$v != null) {
      _statusTypes = _$v.statusTypes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListUsers other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$ListUsers;
  }

  @override
  void update(void updates(ListUsersBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$ListUsers build() {
    final result = _$v ?? new _$ListUsers._(statusTypes: statusTypes?.build());
    replace(result);
    return result;
  }
}

// **************************************************************************
// Generator: BuiltValueGenerator
// Target: abstract class ShowChat
// **************************************************************************

class _$ShowChat extends ShowChat {
  @override
  final String username;
  @override
  final bool private;
  @override
  final String text;

  factory _$ShowChat([void updates(ShowChatBuilder b)]) =>
      (new ShowChatBuilder()..update(updates)).build();

  _$ShowChat._({this.username, this.private, this.text}) : super._() {
    if (username == null) throw new ArgumentError.notNull('username');
    if (private == null) throw new ArgumentError.notNull('private');
    if (text == null) throw new ArgumentError.notNull('text');
  }

  @override
  ShowChat rebuild(void updates(ShowChatBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ShowChatBuilder toBuilder() => new ShowChatBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! ShowChat) return false;
    return username == other.username &&
        private == other.private &&
        text == other.text;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, username.hashCode), private.hashCode), text.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ShowChat')
          ..add('username', username)
          ..add('private', private)
          ..add('text', text))
        .toString();
  }
}

class ShowChatBuilder implements Builder<ShowChat, ShowChatBuilder> {
  _$ShowChat _$v;

  String _username;
  String get username => _$this._username;
  set username(String username) => _$this._username = username;

  bool _private;
  bool get private => _$this._private;
  set private(bool private) => _$this._private = private;

  String _text;
  String get text => _$this._text;
  set text(String text) => _$this._text = text;

  ShowChatBuilder();

  ShowChatBuilder get _$this {
    if (_$v != null) {
      _username = _$v.username;
      _private = _$v.private;
      _text = _$v.text;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ShowChat other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$ShowChat;
  }

  @override
  void update(void updates(ShowChatBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$ShowChat build() {
    final result = _$v ??
        new _$ShowChat._(username: username, private: private, text: text);
    replace(result);
    return result;
  }
}

// **************************************************************************
// Generator: BuiltValueGenerator
// Target: abstract class Welcome
// **************************************************************************

class _$Welcome extends Welcome {
  @override
  final BuiltList<Response> log;
  @override
  final String message;

  factory _$Welcome([void updates(WelcomeBuilder b)]) =>
      (new WelcomeBuilder()..update(updates)).build();

  _$Welcome._({this.log, this.message}) : super._() {
    if (log == null) throw new ArgumentError.notNull('log');
    if (message == null) throw new ArgumentError.notNull('message');
  }

  @override
  Welcome rebuild(void updates(WelcomeBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  WelcomeBuilder toBuilder() => new WelcomeBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! Welcome) return false;
    return log == other.log && message == other.message;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, log.hashCode), message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Welcome')
          ..add('log', log)
          ..add('message', message))
        .toString();
  }
}

class WelcomeBuilder implements Builder<Welcome, WelcomeBuilder> {
  _$Welcome _$v;

  ListBuilder<Response> _log;
  ListBuilder<Response> get log => _$this._log ??= new ListBuilder<Response>();
  set log(ListBuilder<Response> log) => _$this._log = log;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  WelcomeBuilder();

  WelcomeBuilder get _$this {
    if (_$v != null) {
      _log = _$v.log?.toBuilder();
      _message = _$v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Welcome other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$Welcome;
  }

  @override
  void update(void updates(WelcomeBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Welcome build() {
    final result = _$v ?? new _$Welcome._(log: log?.build(), message: message);
    replace(result);
    return result;
  }
}

// **************************************************************************
// Generator: BuiltValueGenerator
// Target: abstract class ListUsersResponse
// **************************************************************************

class _$ListUsersResponse extends ListUsersResponse {
  @override
  final BuiltMap<String, Status> statuses;

  factory _$ListUsersResponse([void updates(ListUsersResponseBuilder b)]) =>
      (new ListUsersResponseBuilder()..update(updates)).build();

  _$ListUsersResponse._({this.statuses}) : super._() {
    if (statuses == null) throw new ArgumentError.notNull('statuses');
  }

  @override
  ListUsersResponse rebuild(void updates(ListUsersResponseBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ListUsersResponseBuilder toBuilder() =>
      new ListUsersResponseBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! ListUsersResponse) return false;
    return statuses == other.statuses;
  }

  @override
  int get hashCode {
    return $jf($jc(0, statuses.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ListUsersResponse')
          ..add('statuses', statuses))
        .toString();
  }
}

class ListUsersResponseBuilder
    implements Builder<ListUsersResponse, ListUsersResponseBuilder> {
  _$ListUsersResponse _$v;

  MapBuilder<String, Status> _statuses;
  MapBuilder<String, Status> get statuses =>
      _$this._statuses ??= new MapBuilder<String, Status>();
  set statuses(MapBuilder<String, Status> statuses) =>
      _$this._statuses = statuses;

  ListUsersResponseBuilder();

  ListUsersResponseBuilder get _$this {
    if (_$v != null) {
      _statuses = _$v.statuses?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListUsersResponse other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$ListUsersResponse;
  }

  @override
  void update(void updates(ListUsersResponseBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$ListUsersResponse build() {
    final result =
        _$v ?? new _$ListUsersResponse._(statuses: statuses?.build());
    replace(result);
    return result;
  }
}
