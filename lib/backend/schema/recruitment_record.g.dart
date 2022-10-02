// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recruitment_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RecruitmentRecord> _$recruitmentRecordSerializer =
    new _$RecruitmentRecordSerializer();

class _$RecruitmentRecordSerializer
    implements StructuredSerializer<RecruitmentRecord> {
  @override
  final Iterable<Type> types = const [RecruitmentRecord, _$RecruitmentRecord];
  @override
  final String wireName = 'RecruitmentRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, RecruitmentRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.no;
    if (value != null) {
      result
        ..add('no')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.start;
    if (value != null) {
      result
        ..add('start')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.end;
    if (value != null) {
      result
        ..add('end')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('Title')
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
  RecruitmentRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RecruitmentRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'no':
          result.no = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'start':
          result.start = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'end':
          result.end = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Title':
          result.title = serializers.deserialize(value,
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

class _$RecruitmentRecord extends RecruitmentRecord {
  @override
  final String? no;
  @override
  final DateTime? start;
  @override
  final DateTime? end;
  @override
  final String? title;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$RecruitmentRecord(
          [void Function(RecruitmentRecordBuilder)? updates]) =>
      (new RecruitmentRecordBuilder()..update(updates))._build();

  _$RecruitmentRecord._({this.no, this.start, this.end, this.title, this.ffRef})
      : super._();

  @override
  RecruitmentRecord rebuild(void Function(RecruitmentRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RecruitmentRecordBuilder toBuilder() =>
      new RecruitmentRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RecruitmentRecord &&
        no == other.no &&
        start == other.start &&
        end == other.end &&
        title == other.title &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, no.hashCode), start.hashCode), end.hashCode),
            title.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RecruitmentRecord')
          ..add('no', no)
          ..add('start', start)
          ..add('end', end)
          ..add('title', title)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class RecruitmentRecordBuilder
    implements Builder<RecruitmentRecord, RecruitmentRecordBuilder> {
  _$RecruitmentRecord? _$v;

  String? _no;
  String? get no => _$this._no;
  set no(String? no) => _$this._no = no;

  DateTime? _start;
  DateTime? get start => _$this._start;
  set start(DateTime? start) => _$this._start = start;

  DateTime? _end;
  DateTime? get end => _$this._end;
  set end(DateTime? end) => _$this._end = end;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  RecruitmentRecordBuilder() {
    RecruitmentRecord._initializeBuilder(this);
  }

  RecruitmentRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _no = $v.no;
      _start = $v.start;
      _end = $v.end;
      _title = $v.title;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RecruitmentRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RecruitmentRecord;
  }

  @override
  void update(void Function(RecruitmentRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RecruitmentRecord build() => _build();

  _$RecruitmentRecord _build() {
    final _$result = _$v ??
        new _$RecruitmentRecord._(
            no: no, start: start, end: end, title: title, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
