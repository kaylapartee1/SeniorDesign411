// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'journals_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<JournalsRecord> _$journalsRecordSerializer =
    new _$JournalsRecordSerializer();

class _$JournalsRecordSerializer
    implements StructuredSerializer<JournalsRecord> {
  @override
  final Iterable<Type> types = const [JournalsRecord, _$JournalsRecord];
  @override
  final String wireName = 'JournalsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, JournalsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.postTitle;
    if (value != null) {
      result
        ..add('post_title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.postDescription;
    if (value != null) {
      result
        ..add('post_description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.timePosted;
    if (value != null) {
      result
        ..add('time_posted')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  JournalsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new JournalsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'post_title':
          result.postTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'post_description':
          result.postDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'time_posted':
          result.timePosted = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$JournalsRecord extends JournalsRecord {
  @override
  final String? postTitle;
  @override
  final String? postDescription;
  @override
  final DateTime? timePosted;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$JournalsRecord([void Function(JournalsRecordBuilder)? updates]) =>
      (new JournalsRecordBuilder()..update(updates))._build();

  _$JournalsRecord._(
      {this.postTitle, this.postDescription, this.timePosted, this.ffRef})
      : super._();

  @override
  JournalsRecord rebuild(void Function(JournalsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  JournalsRecordBuilder toBuilder() =>
      new JournalsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is JournalsRecord &&
        postTitle == other.postTitle &&
        postDescription == other.postDescription &&
        timePosted == other.timePosted &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, postTitle.hashCode);
    _$hash = $jc(_$hash, postDescription.hashCode);
    _$hash = $jc(_$hash, timePosted.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'JournalsRecord')
          ..add('postTitle', postTitle)
          ..add('postDescription', postDescription)
          ..add('timePosted', timePosted)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class JournalsRecordBuilder
    implements Builder<JournalsRecord, JournalsRecordBuilder> {
  _$JournalsRecord? _$v;

  String? _postTitle;
  String? get postTitle => _$this._postTitle;
  set postTitle(String? postTitle) => _$this._postTitle = postTitle;

  String? _postDescription;
  String? get postDescription => _$this._postDescription;
  set postDescription(String? postDescription) =>
      _$this._postDescription = postDescription;

  DateTime? _timePosted;
  DateTime? get timePosted => _$this._timePosted;
  set timePosted(DateTime? timePosted) => _$this._timePosted = timePosted;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  JournalsRecordBuilder() {
    JournalsRecord._initializeBuilder(this);
  }

  JournalsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _postTitle = $v.postTitle;
      _postDescription = $v.postDescription;
      _timePosted = $v.timePosted;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(JournalsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$JournalsRecord;
  }

  @override
  void update(void Function(JournalsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  JournalsRecord build() => _build();

  _$JournalsRecord _build() {
    final _$result = _$v ??
        new _$JournalsRecord._(
            postTitle: postTitle,
            postDescription: postDescription,
            timePosted: timePosted,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
