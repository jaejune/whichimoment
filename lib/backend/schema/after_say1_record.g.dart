// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'after_say1_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AfterSay1Record> _$afterSay1RecordSerializer =
    new _$AfterSay1RecordSerializer();

class _$AfterSay1RecordSerializer
    implements StructuredSerializer<AfterSay1Record> {
  @override
  final Iterable<Type> types = const [AfterSay1Record, _$AfterSay1Record];
  @override
  final String wireName = 'AfterSay1Record';

  @override
  Iterable<Object?> serialize(Serializers serializers, AfterSay1Record object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.afterText;
    if (value != null) {
      result
        ..add('afterText')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.afterSayTime;
    if (value != null) {
      result
        ..add('afterSayTime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.nicname;
    if (value != null) {
      result
        ..add('nicname')
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
  AfterSay1Record deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AfterSay1RecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'afterText':
          result.afterText = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'afterSayTime':
          result.afterSayTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'nicname':
          result.nicname = serializers.deserialize(value,
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

class _$AfterSay1Record extends AfterSay1Record {
  @override
  final String? title;
  @override
  final String? afterText;
  @override
  final DateTime? afterSayTime;
  @override
  final DocumentReference<Object?>? uid;
  @override
  final String? nicname;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$AfterSay1Record([void Function(AfterSay1RecordBuilder)? updates]) =>
      (new AfterSay1RecordBuilder()..update(updates))._build();

  _$AfterSay1Record._(
      {this.title,
      this.afterText,
      this.afterSayTime,
      this.uid,
      this.nicname,
      this.ffRef})
      : super._();

  @override
  AfterSay1Record rebuild(void Function(AfterSay1RecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AfterSay1RecordBuilder toBuilder() =>
      new AfterSay1RecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AfterSay1Record &&
        title == other.title &&
        afterText == other.afterText &&
        afterSayTime == other.afterSayTime &&
        uid == other.uid &&
        nicname == other.nicname &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, title.hashCode), afterText.hashCode),
                    afterSayTime.hashCode),
                uid.hashCode),
            nicname.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AfterSay1Record')
          ..add('title', title)
          ..add('afterText', afterText)
          ..add('afterSayTime', afterSayTime)
          ..add('uid', uid)
          ..add('nicname', nicname)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class AfterSay1RecordBuilder
    implements Builder<AfterSay1Record, AfterSay1RecordBuilder> {
  _$AfterSay1Record? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _afterText;
  String? get afterText => _$this._afterText;
  set afterText(String? afterText) => _$this._afterText = afterText;

  DateTime? _afterSayTime;
  DateTime? get afterSayTime => _$this._afterSayTime;
  set afterSayTime(DateTime? afterSayTime) =>
      _$this._afterSayTime = afterSayTime;

  DocumentReference<Object?>? _uid;
  DocumentReference<Object?>? get uid => _$this._uid;
  set uid(DocumentReference<Object?>? uid) => _$this._uid = uid;

  String? _nicname;
  String? get nicname => _$this._nicname;
  set nicname(String? nicname) => _$this._nicname = nicname;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  AfterSay1RecordBuilder() {
    AfterSay1Record._initializeBuilder(this);
  }

  AfterSay1RecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _afterText = $v.afterText;
      _afterSayTime = $v.afterSayTime;
      _uid = $v.uid;
      _nicname = $v.nicname;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AfterSay1Record other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AfterSay1Record;
  }

  @override
  void update(void Function(AfterSay1RecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AfterSay1Record build() => _build();

  _$AfterSay1Record _build() {
    final _$result = _$v ??
        new _$AfterSay1Record._(
            title: title,
            afterText: afterText,
            afterSayTime: afterSayTime,
            uid: uid,
            nicname: nicname,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
