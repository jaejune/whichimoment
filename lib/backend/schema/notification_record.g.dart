// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NotificationRecord> _$notificationRecordSerializer =
    new _$NotificationRecordSerializer();

class _$NotificationRecordSerializer
    implements StructuredSerializer<NotificationRecord> {
  @override
  final Iterable<Type> types = const [NotificationRecord, _$NotificationRecord];
  @override
  final String wireName = 'NotificationRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, NotificationRecord object,
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
  NotificationRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NotificationRecordBuilder();

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

class _$NotificationRecord extends NotificationRecord {
  @override
  final String? title;
  @override
  final String? text;
  @override
  final DateTime? time;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$NotificationRecord(
          [void Function(NotificationRecordBuilder)? updates]) =>
      (new NotificationRecordBuilder()..update(updates))._build();

  _$NotificationRecord._({this.title, this.text, this.time, this.ffRef})
      : super._();

  @override
  NotificationRecord rebuild(
          void Function(NotificationRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationRecordBuilder toBuilder() =>
      new NotificationRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationRecord &&
        title == other.title &&
        text == other.text &&
        time == other.time &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, title.hashCode), text.hashCode), time.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NotificationRecord')
          ..add('title', title)
          ..add('text', text)
          ..add('time', time)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class NotificationRecordBuilder
    implements Builder<NotificationRecord, NotificationRecordBuilder> {
  _$NotificationRecord? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  DateTime? _time;
  DateTime? get time => _$this._time;
  set time(DateTime? time) => _$this._time = time;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  NotificationRecordBuilder() {
    NotificationRecord._initializeBuilder(this);
  }

  NotificationRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _text = $v.text;
      _time = $v.time;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NotificationRecord;
  }

  @override
  void update(void Function(NotificationRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotificationRecord build() => _build();

  _$NotificationRecord _build() {
    final _$result = _$v ??
        new _$NotificationRecord._(
            title: title, text: text, time: time, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
