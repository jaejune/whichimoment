// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pro_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProRecord> _$proRecordSerializer = new _$ProRecordSerializer();

class _$ProRecordSerializer implements StructuredSerializer<ProRecord> {
  @override
  final Iterable<Type> types = const [ProRecord, _$ProRecord];
  @override
  final String wireName = 'ProRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ProRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.proName;
    if (value != null) {
      result
        ..add('pro_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.proInfo;
    if (value != null) {
      result
        ..add('Pro_info')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.history;
    if (value != null) {
      result
        ..add('History')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.date;
    if (value != null) {
      result
        ..add('Date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.intro;
    if (value != null) {
      result
        ..add('Intro')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.star;
    if (value != null) {
      result
        ..add('Star')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.review;
    if (value != null) {
      result
        ..add('review')
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
  ProRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'pro_name':
          result.proName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Pro_info':
          result.proInfo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'History':
          result.history = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Intro':
          result.intro = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Star':
          result.star = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'review':
          result.review = serializers.deserialize(value,
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

class _$ProRecord extends ProRecord {
  @override
  final String? proName;
  @override
  final String? proInfo;
  @override
  final String? history;
  @override
  final String? date;
  @override
  final String? intro;
  @override
  final String? star;
  @override
  final String? review;
  @override
  final String? img;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ProRecord([void Function(ProRecordBuilder)? updates]) =>
      (new ProRecordBuilder()..update(updates))._build();

  _$ProRecord._(
      {this.proName,
      this.proInfo,
      this.history,
      this.date,
      this.intro,
      this.star,
      this.review,
      this.img,
      this.ffRef})
      : super._();

  @override
  ProRecord rebuild(void Function(ProRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProRecordBuilder toBuilder() => new ProRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProRecord &&
        proName == other.proName &&
        proInfo == other.proInfo &&
        history == other.history &&
        date == other.date &&
        intro == other.intro &&
        star == other.star &&
        review == other.review &&
        img == other.img &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, proName.hashCode), proInfo.hashCode),
                                history.hashCode),
                            date.hashCode),
                        intro.hashCode),
                    star.hashCode),
                review.hashCode),
            img.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProRecord')
          ..add('proName', proName)
          ..add('proInfo', proInfo)
          ..add('history', history)
          ..add('date', date)
          ..add('intro', intro)
          ..add('star', star)
          ..add('review', review)
          ..add('img', img)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ProRecordBuilder implements Builder<ProRecord, ProRecordBuilder> {
  _$ProRecord? _$v;

  String? _proName;
  String? get proName => _$this._proName;
  set proName(String? proName) => _$this._proName = proName;

  String? _proInfo;
  String? get proInfo => _$this._proInfo;
  set proInfo(String? proInfo) => _$this._proInfo = proInfo;

  String? _history;
  String? get history => _$this._history;
  set history(String? history) => _$this._history = history;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  String? _intro;
  String? get intro => _$this._intro;
  set intro(String? intro) => _$this._intro = intro;

  String? _star;
  String? get star => _$this._star;
  set star(String? star) => _$this._star = star;

  String? _review;
  String? get review => _$this._review;
  set review(String? review) => _$this._review = review;

  String? _img;
  String? get img => _$this._img;
  set img(String? img) => _$this._img = img;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ProRecordBuilder() {
    ProRecord._initializeBuilder(this);
  }

  ProRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _proName = $v.proName;
      _proInfo = $v.proInfo;
      _history = $v.history;
      _date = $v.date;
      _intro = $v.intro;
      _star = $v.star;
      _review = $v.review;
      _img = $v.img;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProRecord;
  }

  @override
  void update(void Function(ProRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProRecord build() => _build();

  _$ProRecord _build() {
    final _$result = _$v ??
        new _$ProRecord._(
            proName: proName,
            proInfo: proInfo,
            history: history,
            date: date,
            intro: intro,
            star: star,
            review: review,
            img: img,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
