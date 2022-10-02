// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consulatation_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ConsulatationRecord> _$consulatationRecordSerializer =
    new _$ConsulatationRecordSerializer();

class _$ConsulatationRecordSerializer
    implements StructuredSerializer<ConsulatationRecord> {
  @override
  final Iterable<Type> types = const [
    ConsulatationRecord,
    _$ConsulatationRecord
  ];
  @override
  final String wireName = 'ConsulatationRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ConsulatationRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.whowith;
    if (value != null) {
      result
        ..add('whowith')
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
  ConsulatationRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ConsulatationRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'whowith':
          result.whowith = serializers.deserialize(value,
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

class _$ConsulatationRecord extends ConsulatationRecord {
  @override
  final String? whowith;
  @override
  final DateTime? time;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ConsulatationRecord(
          [void Function(ConsulatationRecordBuilder)? updates]) =>
      (new ConsulatationRecordBuilder()..update(updates))._build();

  _$ConsulatationRecord._({this.whowith, this.time, this.ffRef}) : super._();

  @override
  ConsulatationRecord rebuild(
          void Function(ConsulatationRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsulatationRecordBuilder toBuilder() =>
      new ConsulatationRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsulatationRecord &&
        whowith == other.whowith &&
        time == other.time &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, whowith.hashCode), time.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConsulatationRecord')
          ..add('whowith', whowith)
          ..add('time', time)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ConsulatationRecordBuilder
    implements Builder<ConsulatationRecord, ConsulatationRecordBuilder> {
  _$ConsulatationRecord? _$v;

  String? _whowith;
  String? get whowith => _$this._whowith;
  set whowith(String? whowith) => _$this._whowith = whowith;

  DateTime? _time;
  DateTime? get time => _$this._time;
  set time(DateTime? time) => _$this._time = time;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ConsulatationRecordBuilder() {
    ConsulatationRecord._initializeBuilder(this);
  }

  ConsulatationRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _whowith = $v.whowith;
      _time = $v.time;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConsulatationRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ConsulatationRecord;
  }

  @override
  void update(void Function(ConsulatationRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsulatationRecord build() => _build();

  _$ConsulatationRecord _build() {
    final _$result = _$v ??
        new _$ConsulatationRecord._(whowith: whowith, time: time, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
