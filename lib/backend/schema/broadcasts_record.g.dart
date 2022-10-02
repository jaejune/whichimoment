// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'broadcasts_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BroadcastsRecord> _$broadcastsRecordSerializer =
    new _$BroadcastsRecordSerializer();

class _$BroadcastsRecordSerializer
    implements StructuredSerializer<BroadcastsRecord> {
  @override
  final Iterable<Type> types = const [BroadcastsRecord, _$BroadcastsRecord];
  @override
  final String wireName = 'BroadcastsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, BroadcastsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.isLive;
    if (value != null) {
      result
        ..add('is_live')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.time;
    if (value != null) {
      result
        ..add('time')
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
  BroadcastsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BroadcastsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'is_live':
          result.isLive = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'time':
          result.time = serializers.deserialize(value,
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

class _$BroadcastsRecord extends BroadcastsRecord {
  @override
  final bool? isLive;
  @override
  final String? name;
  @override
  final DateTime? time;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$BroadcastsRecord(
          [void Function(BroadcastsRecordBuilder)? updates]) =>
      (new BroadcastsRecordBuilder()..update(updates))._build();

  _$BroadcastsRecord._({this.isLive, this.name, this.time, this.ffRef})
      : super._();

  @override
  BroadcastsRecord rebuild(void Function(BroadcastsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BroadcastsRecordBuilder toBuilder() =>
      new BroadcastsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BroadcastsRecord &&
        isLive == other.isLive &&
        name == other.name &&
        time == other.time &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, isLive.hashCode), name.hashCode), time.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BroadcastsRecord')
          ..add('isLive', isLive)
          ..add('name', name)
          ..add('time', time)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class BroadcastsRecordBuilder
    implements Builder<BroadcastsRecord, BroadcastsRecordBuilder> {
  _$BroadcastsRecord? _$v;

  bool? _isLive;
  bool? get isLive => _$this._isLive;
  set isLive(bool? isLive) => _$this._isLive = isLive;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  DateTime? _time;
  DateTime? get time => _$this._time;
  set time(DateTime? time) => _$this._time = time;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  BroadcastsRecordBuilder() {
    BroadcastsRecord._initializeBuilder(this);
  }

  BroadcastsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isLive = $v.isLive;
      _name = $v.name;
      _time = $v.time;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BroadcastsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BroadcastsRecord;
  }

  @override
  void update(void Function(BroadcastsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BroadcastsRecord build() => _build();

  _$BroadcastsRecord _build() {
    final _$result = _$v ??
        new _$BroadcastsRecord._(
            isLive: isLive, name: name, time: time, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
