// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notice_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NoticeRecord> _$noticeRecordSerializer =
    new _$NoticeRecordSerializer();

class _$NoticeRecordSerializer implements StructuredSerializer<NoticeRecord> {
  @override
  final Iterable<Type> types = const [NoticeRecord, _$NoticeRecord];
  @override
  final String wireName = 'NoticeRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, NoticeRecord object,
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
    value = object.title;
    if (value != null) {
      result
        ..add('Title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.time;
    if (value != null) {
      result
        ..add('Time')
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
  NoticeRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NoticeRecordBuilder();

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
        case 'Title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Time':
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

class _$NoticeRecord extends NoticeRecord {
  @override
  final String? no;
  @override
  final String? title;
  @override
  final DateTime? time;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$NoticeRecord([void Function(NoticeRecordBuilder)? updates]) =>
      (new NoticeRecordBuilder()..update(updates))._build();

  _$NoticeRecord._({this.no, this.title, this.time, this.ffRef}) : super._();

  @override
  NoticeRecord rebuild(void Function(NoticeRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NoticeRecordBuilder toBuilder() => new NoticeRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NoticeRecord &&
        no == other.no &&
        title == other.title &&
        time == other.time &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc($jc(0, no.hashCode), title.hashCode), time.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NoticeRecord')
          ..add('no', no)
          ..add('title', title)
          ..add('time', time)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class NoticeRecordBuilder
    implements Builder<NoticeRecord, NoticeRecordBuilder> {
  _$NoticeRecord? _$v;

  String? _no;
  String? get no => _$this._no;
  set no(String? no) => _$this._no = no;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  DateTime? _time;
  DateTime? get time => _$this._time;
  set time(DateTime? time) => _$this._time = time;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  NoticeRecordBuilder() {
    NoticeRecord._initializeBuilder(this);
  }

  NoticeRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _no = $v.no;
      _title = $v.title;
      _time = $v.time;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NoticeRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NoticeRecord;
  }

  @override
  void update(void Function(NoticeRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NoticeRecord build() => _build();

  _$NoticeRecord _build() {
    final _$result = _$v ??
        new _$NoticeRecord._(no: no, title: title, time: time, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
