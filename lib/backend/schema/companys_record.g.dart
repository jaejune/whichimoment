// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'companys_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CompanysRecord> _$companysRecordSerializer =
    new _$CompanysRecordSerializer();

class _$CompanysRecordSerializer
    implements StructuredSerializer<CompanysRecord> {
  @override
  final Iterable<Type> types = const [CompanysRecord, _$CompanysRecord];
  @override
  final String wireName = 'CompanysRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, CompanysRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('Name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.info;
    if (value != null) {
      result
        ..add('Info')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.text;
    if (value != null) {
      result
        ..add('Text')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.img;
    if (value != null) {
      result
        ..add('IMG')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  CompanysRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CompanysRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Info':
          result.info = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'IMG':
          result.img = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$CompanysRecord extends CompanysRecord {
  @override
  final String? name;
  @override
  final String? info;
  @override
  final String? text;
  @override
  final String? img;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CompanysRecord([void Function(CompanysRecordBuilder)? updates]) =>
      (new CompanysRecordBuilder()..update(updates))._build();

  _$CompanysRecord._({this.name, this.info, this.text, this.img, this.ffRef})
      : super._();

  @override
  CompanysRecord rebuild(void Function(CompanysRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CompanysRecordBuilder toBuilder() =>
      new CompanysRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CompanysRecord &&
        name == other.name &&
        info == other.info &&
        text == other.text &&
        img == other.img &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, name.hashCode), info.hashCode), text.hashCode),
            img.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CompanysRecord')
          ..add('name', name)
          ..add('info', info)
          ..add('text', text)
          ..add('img', img)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CompanysRecordBuilder
    implements Builder<CompanysRecord, CompanysRecordBuilder> {
  _$CompanysRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _info;
  String? get info => _$this._info;
  set info(String? info) => _$this._info = info;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  String? _img;
  String? get img => _$this._img;
  set img(String? img) => _$this._img = img;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CompanysRecordBuilder() {
    CompanysRecord._initializeBuilder(this);
  }

  CompanysRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _info = $v.info;
      _text = $v.text;
      _img = $v.img;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CompanysRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CompanysRecord;
  }

  @override
  void update(void Function(CompanysRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CompanysRecord build() => _build();

  _$CompanysRecord _build() {
    final _$result = _$v ??
        new _$CompanysRecord._(
            name: name, info: info, text: text, img: img, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
