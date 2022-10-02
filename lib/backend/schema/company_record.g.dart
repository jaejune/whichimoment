// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CompanyRecord> _$companyRecordSerializer =
    new _$CompanyRecordSerializer();

class _$CompanyRecordSerializer implements StructuredSerializer<CompanyRecord> {
  @override
  final Iterable<Type> types = const [CompanyRecord, _$CompanyRecord];
  @override
  final String wireName = 'CompanyRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, CompanyRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.introduce;
    if (value != null) {
      result
        ..add('introduce')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.homepage;
    if (value != null) {
      result
        ..add('homepage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.logo;
    if (value != null) {
      result
        ..add('logo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.personRef;
    if (value != null) {
      result
        ..add('personRef')
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
  CompanyRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CompanyRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'introduce':
          result.introduce = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'homepage':
          result.homepage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'logo':
          result.logo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'personRef':
          result.personRef = serializers.deserialize(value,
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

class _$CompanyRecord extends CompanyRecord {
  @override
  final String? name;
  @override
  final String? introduce;
  @override
  final String? homepage;
  @override
  final String? logo;
  @override
  final DocumentReference<Object?>? personRef;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CompanyRecord([void Function(CompanyRecordBuilder)? updates]) =>
      (new CompanyRecordBuilder()..update(updates))._build();

  _$CompanyRecord._(
      {this.name,
      this.introduce,
      this.homepage,
      this.logo,
      this.personRef,
      this.ffRef})
      : super._();

  @override
  CompanyRecord rebuild(void Function(CompanyRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CompanyRecordBuilder toBuilder() => new CompanyRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CompanyRecord &&
        name == other.name &&
        introduce == other.introduce &&
        homepage == other.homepage &&
        logo == other.logo &&
        personRef == other.personRef &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, name.hashCode), introduce.hashCode),
                    homepage.hashCode),
                logo.hashCode),
            personRef.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CompanyRecord')
          ..add('name', name)
          ..add('introduce', introduce)
          ..add('homepage', homepage)
          ..add('logo', logo)
          ..add('personRef', personRef)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CompanyRecordBuilder
    implements Builder<CompanyRecord, CompanyRecordBuilder> {
  _$CompanyRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _introduce;
  String? get introduce => _$this._introduce;
  set introduce(String? introduce) => _$this._introduce = introduce;

  String? _homepage;
  String? get homepage => _$this._homepage;
  set homepage(String? homepage) => _$this._homepage = homepage;

  String? _logo;
  String? get logo => _$this._logo;
  set logo(String? logo) => _$this._logo = logo;

  DocumentReference<Object?>? _personRef;
  DocumentReference<Object?>? get personRef => _$this._personRef;
  set personRef(DocumentReference<Object?>? personRef) =>
      _$this._personRef = personRef;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CompanyRecordBuilder() {
    CompanyRecord._initializeBuilder(this);
  }

  CompanyRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _introduce = $v.introduce;
      _homepage = $v.homepage;
      _logo = $v.logo;
      _personRef = $v.personRef;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CompanyRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CompanyRecord;
  }

  @override
  void update(void Function(CompanyRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CompanyRecord build() => _build();

  _$CompanyRecord _build() {
    final _$result = _$v ??
        new _$CompanyRecord._(
            name: name,
            introduce: introduce,
            homepage: homepage,
            logo: logo,
            personRef: personRef,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
