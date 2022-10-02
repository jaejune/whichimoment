// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feel_set_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FeelSetRecord> _$feelSetRecordSerializer =
    new _$FeelSetRecordSerializer();

class _$FeelSetRecordSerializer implements StructuredSerializer<FeelSetRecord> {
  @override
  final Iterable<Type> types = const [FeelSetRecord, _$FeelSetRecord];
  @override
  final String wireName = 'FeelSetRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, FeelSetRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.feels;
    if (value != null) {
      result
        ..add('feels')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
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
  FeelSetRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FeelSetRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'feels':
          result.feels.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))!
              as BuiltList<Object?>);
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

class _$FeelSetRecord extends FeelSetRecord {
  @override
  final BuiltList<int>? feels;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$FeelSetRecord([void Function(FeelSetRecordBuilder)? updates]) =>
      (new FeelSetRecordBuilder()..update(updates))._build();

  _$FeelSetRecord._({this.feels, this.ffRef}) : super._();

  @override
  FeelSetRecord rebuild(void Function(FeelSetRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FeelSetRecordBuilder toBuilder() => new FeelSetRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FeelSetRecord &&
        feels == other.feels &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, feels.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FeelSetRecord')
          ..add('feels', feels)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class FeelSetRecordBuilder
    implements Builder<FeelSetRecord, FeelSetRecordBuilder> {
  _$FeelSetRecord? _$v;

  ListBuilder<int>? _feels;
  ListBuilder<int> get feels => _$this._feels ??= new ListBuilder<int>();
  set feels(ListBuilder<int>? feels) => _$this._feels = feels;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  FeelSetRecordBuilder() {
    FeelSetRecord._initializeBuilder(this);
  }

  FeelSetRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _feels = $v.feels?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FeelSetRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FeelSetRecord;
  }

  @override
  void update(void Function(FeelSetRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FeelSetRecord build() => _build();

  _$FeelSetRecord _build() {
    _$FeelSetRecord _$result;
    try {
      _$result =
          _$v ?? new _$FeelSetRecord._(feels: _feels?.build(), ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'feels';
        _feels?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'FeelSetRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
