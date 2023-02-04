// GENERATED CODE - DO NOT MODIFY BY HAND

part of auth_models;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AuthState> _$authStateSerializer = new _$AuthStateSerializer();
Serializer<AppUser> _$appUserSerializer = new _$AppUserSerializer();
Serializer<RegisterInfo> _$registerInfoSerializer =
    new _$RegisterInfoSerializer();

class _$AuthStateSerializer implements StructuredSerializer<AuthState> {
  @override
  final Iterable<Type> types = const [AuthState, _$AuthState];
  @override
  final String wireName = 'AuthState';

  @override
  Iterable<Object?> serialize(Serializers serializers, AuthState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'isLoading',
      serializers.serialize(object.isLoading,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(AppUser)));
    }
    value = object.info;
    if (value != null) {
      result
        ..add('info')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(RegisterInfo)));
    }
    return result;
  }

  @override
  AuthState deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AuthStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'user':
          result.user.replace(serializers.deserialize(value,
              specifiedType: const FullType(AppUser))! as AppUser);
          break;
        case 'info':
          result.info.replace(serializers.deserialize(value,
              specifiedType: const FullType(RegisterInfo))! as RegisterInfo);
          break;
        case 'isLoading':
          result.isLoading = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$AppUserSerializer implements StructuredSerializer<AppUser> {
  @override
  final Iterable<Type> types = const [AppUser, _$AppUser];
  @override
  final String wireName = 'AppUser';

  @override
  Iterable<Object?> serialize(Serializers serializers, AppUser object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'uid',
      serializers.serialize(object.uid, specifiedType: const FullType(String)),
      'photoUrl',
      serializers.serialize(object.photoUrl,
          specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'displayName',
      serializers.serialize(object.displayName,
          specifiedType: const FullType(String)),
      'role',
      serializers.serialize(object.role, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  AppUser deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppUserBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'photoUrl':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'displayName':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'role':
          result.role = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$RegisterInfoSerializer implements StructuredSerializer<RegisterInfo> {
  @override
  final Iterable<Type> types = const [RegisterInfo, _$RegisterInfo];
  @override
  final String wireName = 'RegisterInfo';

  @override
  Iterable<Object?> serialize(Serializers serializers, RegisterInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'displayName',
      serializers.serialize(object.displayName,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'surname',
      serializers.serialize(object.surname,
          specifiedType: const FullType(String)),
      'phone',
      serializers.serialize(object.phone,
          specifiedType: const FullType(String)),
      'birth',
      serializers.serialize(object.birth,
          specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'pass',
      serializers.serialize(object.pass, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photoUrl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  RegisterInfo deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RegisterInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'photoUrl':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'displayName':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'surname':
          result.surname = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'phone':
          result.phone = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'birth':
          result.birth = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'pass':
          result.pass = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$AuthState extends AuthState {
  @override
  final AppUser? user;
  @override
  final RegisterInfo? info;
  @override
  final bool isLoading;

  factory _$AuthState([void Function(AuthStateBuilder)? updates]) =>
      (new AuthStateBuilder()..update(updates))._build();

  _$AuthState._({this.user, this.info, required this.isLoading}) : super._() {
    BuiltValueNullFieldError.checkNotNull(isLoading, r'AuthState', 'isLoading');
  }

  @override
  AuthState rebuild(void Function(AuthStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthStateBuilder toBuilder() => new AuthStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthState &&
        user == other.user &&
        info == other.info &&
        isLoading == other.isLoading;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jc(_$hash, info.hashCode);
    _$hash = $jc(_$hash, isLoading.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AuthState')
          ..add('user', user)
          ..add('info', info)
          ..add('isLoading', isLoading))
        .toString();
  }
}

class AuthStateBuilder implements Builder<AuthState, AuthStateBuilder> {
  _$AuthState? _$v;

  AppUserBuilder? _user;
  AppUserBuilder get user => _$this._user ??= new AppUserBuilder();
  set user(AppUserBuilder? user) => _$this._user = user;

  RegisterInfoBuilder? _info;
  RegisterInfoBuilder get info => _$this._info ??= new RegisterInfoBuilder();
  set info(RegisterInfoBuilder? info) => _$this._info = info;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  AuthStateBuilder();

  AuthStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _user = $v.user?.toBuilder();
      _info = $v.info?.toBuilder();
      _isLoading = $v.isLoading;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AuthState;
  }

  @override
  void update(void Function(AuthStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthState build() => _build();

  _$AuthState _build() {
    _$AuthState _$result;
    try {
      _$result = _$v ??
          new _$AuthState._(
              user: _user?.build(),
              info: _info?.build(),
              isLoading: BuiltValueNullFieldError.checkNotNull(
                  isLoading, r'AuthState', 'isLoading'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
        _$failedField = 'info';
        _info?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AuthState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$AppUser extends AppUser {
  @override
  final String uid;
  @override
  final String photoUrl;
  @override
  final String email;
  @override
  final String displayName;
  @override
  final String role;

  factory _$AppUser([void Function(AppUserBuilder)? updates]) =>
      (new AppUserBuilder()..update(updates))._build();

  _$AppUser._(
      {required this.uid,
      required this.photoUrl,
      required this.email,
      required this.displayName,
      required this.role})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(uid, r'AppUser', 'uid');
    BuiltValueNullFieldError.checkNotNull(photoUrl, r'AppUser', 'photoUrl');
    BuiltValueNullFieldError.checkNotNull(email, r'AppUser', 'email');
    BuiltValueNullFieldError.checkNotNull(
        displayName, r'AppUser', 'displayName');
    BuiltValueNullFieldError.checkNotNull(role, r'AppUser', 'role');
  }

  @override
  AppUser rebuild(void Function(AppUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppUserBuilder toBuilder() => new AppUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppUser &&
        uid == other.uid &&
        photoUrl == other.photoUrl &&
        email == other.email &&
        displayName == other.displayName &&
        role == other.role;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, uid.hashCode);
    _$hash = $jc(_$hash, photoUrl.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AppUser')
          ..add('uid', uid)
          ..add('photoUrl', photoUrl)
          ..add('email', email)
          ..add('displayName', displayName)
          ..add('role', role))
        .toString();
  }
}

class AppUserBuilder implements Builder<AppUser, AppUserBuilder> {
  _$AppUser? _$v;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _role;
  String? get role => _$this._role;
  set role(String? role) => _$this._role = role;

  AppUserBuilder();

  AppUserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uid = $v.uid;
      _photoUrl = $v.photoUrl;
      _email = $v.email;
      _displayName = $v.displayName;
      _role = $v.role;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppUser other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppUser;
  }

  @override
  void update(void Function(AppUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AppUser build() => _build();

  _$AppUser _build() {
    final _$result = _$v ??
        new _$AppUser._(
            uid: BuiltValueNullFieldError.checkNotNull(uid, r'AppUser', 'uid'),
            photoUrl: BuiltValueNullFieldError.checkNotNull(
                photoUrl, r'AppUser', 'photoUrl'),
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'AppUser', 'email'),
            displayName: BuiltValueNullFieldError.checkNotNull(
                displayName, r'AppUser', 'displayName'),
            role: BuiltValueNullFieldError.checkNotNull(
                role, r'AppUser', 'role'));
    replace(_$result);
    return _$result;
  }
}

class _$RegisterInfo extends RegisterInfo {
  @override
  final String? photoUrl;
  @override
  final String displayName;
  @override
  final String name;
  @override
  final String surname;
  @override
  final String phone;
  @override
  final String birth;
  @override
  final String email;
  @override
  final String pass;

  factory _$RegisterInfo([void Function(RegisterInfoBuilder)? updates]) =>
      (new RegisterInfoBuilder()..update(updates))._build();

  _$RegisterInfo._(
      {this.photoUrl,
      required this.displayName,
      required this.name,
      required this.surname,
      required this.phone,
      required this.birth,
      required this.email,
      required this.pass})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        displayName, r'RegisterInfo', 'displayName');
    BuiltValueNullFieldError.checkNotNull(name, r'RegisterInfo', 'name');
    BuiltValueNullFieldError.checkNotNull(surname, r'RegisterInfo', 'surname');
    BuiltValueNullFieldError.checkNotNull(phone, r'RegisterInfo', 'phone');
    BuiltValueNullFieldError.checkNotNull(birth, r'RegisterInfo', 'birth');
    BuiltValueNullFieldError.checkNotNull(email, r'RegisterInfo', 'email');
    BuiltValueNullFieldError.checkNotNull(pass, r'RegisterInfo', 'pass');
  }

  @override
  RegisterInfo rebuild(void Function(RegisterInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RegisterInfoBuilder toBuilder() => new RegisterInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegisterInfo &&
        photoUrl == other.photoUrl &&
        displayName == other.displayName &&
        name == other.name &&
        surname == other.surname &&
        phone == other.phone &&
        birth == other.birth &&
        email == other.email &&
        pass == other.pass;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, photoUrl.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, surname.hashCode);
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jc(_$hash, birth.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, pass.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RegisterInfo')
          ..add('photoUrl', photoUrl)
          ..add('displayName', displayName)
          ..add('name', name)
          ..add('surname', surname)
          ..add('phone', phone)
          ..add('birth', birth)
          ..add('email', email)
          ..add('pass', pass))
        .toString();
  }
}

class RegisterInfoBuilder
    implements Builder<RegisterInfo, RegisterInfoBuilder> {
  _$RegisterInfo? _$v;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _surname;
  String? get surname => _$this._surname;
  set surname(String? surname) => _$this._surname = surname;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  String? _birth;
  String? get birth => _$this._birth;
  set birth(String? birth) => _$this._birth = birth;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _pass;
  String? get pass => _$this._pass;
  set pass(String? pass) => _$this._pass = pass;

  RegisterInfoBuilder();

  RegisterInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _photoUrl = $v.photoUrl;
      _displayName = $v.displayName;
      _name = $v.name;
      _surname = $v.surname;
      _phone = $v.phone;
      _birth = $v.birth;
      _email = $v.email;
      _pass = $v.pass;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegisterInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RegisterInfo;
  }

  @override
  void update(void Function(RegisterInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RegisterInfo build() => _build();

  _$RegisterInfo _build() {
    final _$result = _$v ??
        new _$RegisterInfo._(
            photoUrl: photoUrl,
            displayName: BuiltValueNullFieldError.checkNotNull(
                displayName, r'RegisterInfo', 'displayName'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'RegisterInfo', 'name'),
            surname: BuiltValueNullFieldError.checkNotNull(
                surname, r'RegisterInfo', 'surname'),
            phone: BuiltValueNullFieldError.checkNotNull(
                phone, r'RegisterInfo', 'phone'),
            birth: BuiltValueNullFieldError.checkNotNull(
                birth, r'RegisterInfo', 'birth'),
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'RegisterInfo', 'email'),
            pass: BuiltValueNullFieldError.checkNotNull(
                pass, r'RegisterInfo', 'pass'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
