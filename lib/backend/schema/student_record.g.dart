// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<StudentRecord> _$studentRecordSerializer =
    new _$StudentRecordSerializer();

class _$StudentRecordSerializer implements StructuredSerializer<StudentRecord> {
  @override
  final Iterable<Type> types = const [StudentRecord, _$StudentRecord];
  @override
  final String wireName = 'StudentRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, StudentRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.stName;
    if (value != null) {
      result
        ..add('St_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.date;
    if (value != null) {
      result
        ..add('date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.info;
    if (value != null) {
      result
        ..add('info')
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
  StudentRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StudentRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'St_name':
          result.stName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'info':
          result.info = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'text':
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

class _$StudentRecord extends StudentRecord {
  @override
  final String? stName;
  @override
  final String? date;
  @override
  final String? info;
  @override
  final String? text;
  @override
  final String? img;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$StudentRecord([void Function(StudentRecordBuilder)? updates]) =>
      (new StudentRecordBuilder()..update(updates))._build();

  _$StudentRecord._(
      {this.stName, this.date, this.info, this.text, this.img, this.ffRef})
      : super._();

  @override
  StudentRecord rebuild(void Function(StudentRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StudentRecordBuilder toBuilder() => new StudentRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StudentRecord &&
        stName == other.stName &&
        date == other.date &&
        info == other.info &&
        text == other.text &&
        img == other.img &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc($jc(0, stName.hashCode), date.hashCode), info.hashCode),
                text.hashCode),
            img.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StudentRecord')
          ..add('stName', stName)
          ..add('date', date)
          ..add('info', info)
          ..add('text', text)
          ..add('img', img)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class StudentRecordBuilder
    implements Builder<StudentRecord, StudentRecordBuilder> {
  _$StudentRecord? _$v;

  String? _stName;
  String? get stName => _$this._stName;
  set stName(String? stName) => _$this._stName = stName;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

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

  StudentRecordBuilder() {
    StudentRecord._initializeBuilder(this);
  }

  StudentRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stName = $v.stName;
      _date = $v.date;
      _info = $v.info;
      _text = $v.text;
      _img = $v.img;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StudentRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StudentRecord;
  }

  @override
  void update(void Function(StudentRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StudentRecord build() => _build();

  _$StudentRecord _build() {
    final _$result = _$v ??
        new _$StudentRecord._(
            stName: stName,
            date: date,
            info: info,
            text: text,
            img: img,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
