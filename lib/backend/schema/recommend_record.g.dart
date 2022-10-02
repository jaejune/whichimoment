// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recommend_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RecommendRecord> _$recommendRecordSerializer =
    new _$RecommendRecordSerializer();

class _$RecommendRecordSerializer
    implements StructuredSerializer<RecommendRecord> {
  @override
  final Iterable<Type> types = const [RecommendRecord, _$RecommendRecord];
  @override
  final String wireName = 'RecommendRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, RecommendRecord object,
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
    value = object.text;
    if (value != null) {
      result
        ..add('text')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.recom;
    if (value != null) {
      result
        ..add('recom')
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
  RecommendRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RecommendRecordBuilder();

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
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'recom':
          result.recom = serializers.deserialize(value,
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

class _$RecommendRecord extends RecommendRecord {
  @override
  final String? title;
  @override
  final String? text;
  @override
  final String? displayName;
  @override
  final String? recom;
  @override
  final DateTime? time;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$RecommendRecord([void Function(RecommendRecordBuilder)? updates]) =>
      (new RecommendRecordBuilder()..update(updates))._build();

  _$RecommendRecord._(
      {this.title,
      this.text,
      this.displayName,
      this.recom,
      this.time,
      this.ffRef})
      : super._();

  @override
  RecommendRecord rebuild(void Function(RecommendRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RecommendRecordBuilder toBuilder() =>
      new RecommendRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RecommendRecord &&
        title == other.title &&
        text == other.text &&
        displayName == other.displayName &&
        recom == other.recom &&
        time == other.time &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, title.hashCode), text.hashCode),
                    displayName.hashCode),
                recom.hashCode),
            time.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RecommendRecord')
          ..add('title', title)
          ..add('text', text)
          ..add('displayName', displayName)
          ..add('recom', recom)
          ..add('time', time)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class RecommendRecordBuilder
    implements Builder<RecommendRecord, RecommendRecordBuilder> {
  _$RecommendRecord? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _recom;
  String? get recom => _$this._recom;
  set recom(String? recom) => _$this._recom = recom;

  DateTime? _time;
  DateTime? get time => _$this._time;
  set time(DateTime? time) => _$this._time = time;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  RecommendRecordBuilder() {
    RecommendRecord._initializeBuilder(this);
  }

  RecommendRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _text = $v.text;
      _displayName = $v.displayName;
      _recom = $v.recom;
      _time = $v.time;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RecommendRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RecommendRecord;
  }

  @override
  void update(void Function(RecommendRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RecommendRecord build() => _build();

  _$RecommendRecord _build() {
    final _$result = _$v ??
        new _$RecommendRecord._(
            title: title,
            text: text,
            displayName: displayName,
            recom: recom,
            time: time,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
