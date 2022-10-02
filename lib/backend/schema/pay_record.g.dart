// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pay_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PayRecord> _$payRecordSerializer = new _$PayRecordSerializer();

class _$PayRecordSerializer implements StructuredSerializer<PayRecord> {
  @override
  final Iterable<Type> types = const [PayRecord, _$PayRecord];
  @override
  final String wireName = 'PayRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, PayRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.day;
    if (value != null) {
      result
        ..add('day')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.whowith;
    if (value != null) {
      result
        ..add('whowith')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ref;
    if (value != null) {
      result
        ..add('ref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
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
  PayRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PayRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'day':
          result.day = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'whowith':
          result.whowith = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ref':
          result.ref = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
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

class _$PayRecord extends PayRecord {
  @override
  final int? price;
  @override
  final DateTime? day;
  @override
  final String? whowith;
  @override
  final DocumentReference<Object?>? ref;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PayRecord([void Function(PayRecordBuilder)? updates]) =>
      (new PayRecordBuilder()..update(updates))._build();

  _$PayRecord._({this.price, this.day, this.whowith, this.ref, this.ffRef})
      : super._();

  @override
  PayRecord rebuild(void Function(PayRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PayRecordBuilder toBuilder() => new PayRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PayRecord &&
        price == other.price &&
        day == other.day &&
        whowith == other.whowith &&
        ref == other.ref &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, price.hashCode), day.hashCode), whowith.hashCode),
            ref.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PayRecord')
          ..add('price', price)
          ..add('day', day)
          ..add('whowith', whowith)
          ..add('ref', ref)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PayRecordBuilder implements Builder<PayRecord, PayRecordBuilder> {
  _$PayRecord? _$v;

  int? _price;
  int? get price => _$this._price;
  set price(int? price) => _$this._price = price;

  DateTime? _day;
  DateTime? get day => _$this._day;
  set day(DateTime? day) => _$this._day = day;

  String? _whowith;
  String? get whowith => _$this._whowith;
  set whowith(String? whowith) => _$this._whowith = whowith;

  DocumentReference<Object?>? _ref;
  DocumentReference<Object?>? get ref => _$this._ref;
  set ref(DocumentReference<Object?>? ref) => _$this._ref = ref;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PayRecordBuilder() {
    PayRecord._initializeBuilder(this);
  }

  PayRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _price = $v.price;
      _day = $v.day;
      _whowith = $v.whowith;
      _ref = $v.ref;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PayRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PayRecord;
  }

  @override
  void update(void Function(PayRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PayRecord build() => _build();

  _$PayRecord _build() {
    final _$result = _$v ??
        new _$PayRecord._(
            price: price, day: day, whowith: whowith, ref: ref, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
