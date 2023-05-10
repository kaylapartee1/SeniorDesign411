// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UsersStruct> _$usersStructSerializer = new _$UsersStructSerializer();

class _$UsersStructSerializer implements StructuredSerializer<UsersStruct> {
  @override
  final Iterable<Type> types = const [UsersStruct, _$UsersStruct];
  @override
  final String wireName = 'UsersStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, UsersStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.password;
    if (value != null) {
      result
        ..add('password')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  UsersStruct deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UsersStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'firestoreUtilData':
          result.firestoreUtilData = serializers.deserialize(value,
                  specifiedType: const FullType(FirestoreUtilData))!
              as FirestoreUtilData;
          break;
      }
    }

    return result.build();
  }
}

class _$UsersStruct extends UsersStruct {
  @override
  final String? email;
  @override
  final String? password;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$UsersStruct([void Function(UsersStructBuilder)? updates]) =>
      (new UsersStructBuilder()..update(updates))._build();

  _$UsersStruct._({this.email, this.password, required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'UsersStruct', 'firestoreUtilData');
  }

  @override
  UsersStruct rebuild(void Function(UsersStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsersStructBuilder toBuilder() => new UsersStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsersStruct &&
        email == other.email &&
        password == other.password &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, firestoreUtilData.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UsersStruct')
          ..add('email', email)
          ..add('password', password)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class UsersStructBuilder implements Builder<UsersStruct, UsersStructBuilder> {
  _$UsersStruct? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  UsersStructBuilder() {
    UsersStruct._initializeBuilder(this);
  }

  UsersStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _password = $v.password;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsersStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsersStruct;
  }

  @override
  void update(void Function(UsersStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UsersStruct build() => _build();

  _$UsersStruct _build() {
    final _$result = _$v ??
        new _$UsersStruct._(
            email: email,
            password: password,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'UsersStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
