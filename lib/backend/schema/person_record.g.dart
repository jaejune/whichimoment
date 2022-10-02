// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PersonRecord> _$personRecordSerializer =
    new _$PersonRecordSerializer();

class _$PersonRecordSerializer implements StructuredSerializer<PersonRecord> {
  @override
  final Iterable<Type> types = const [PersonRecord, _$PersonRecord];
  @override
  final String wireName = 'PersonRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, PersonRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
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
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.certificate;
    if (value != null) {
      result
        ..add('certificate')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.introduce;
    if (value != null) {
      result
        ..add('introduce')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.after;
    if (value != null) {
      result
        ..add('after')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.calendar;
    if (value != null) {
      result
        ..add('calendar')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(DateTime)])));
    }
    value = object.feelsets;
    if (value != null) {
      result
        ..add('feelsets')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(FeelSetStruct)])));
    }
    value = object.days7;
    if (value != null) {
      result
        ..add('days7')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nickname;
    if (value != null) {
      result
        ..add('nickname')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.password;
    if (value != null) {
      result
        ..add('Password')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.birth;
    if (value != null) {
      result
        ..add('birth')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.gender;
    if (value != null) {
      result
        ..add('Gender')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.whoU;
    if (value != null) {
      result
        ..add('whoU')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.company;
    if (value != null) {
      result
        ..add('company')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cash;
    if (value != null) {
      result
        ..add('cash')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  PersonRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PersonRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'certificate':
          result.certificate.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'introduce':
          result.introduce = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'after':
          result.after.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'calendar':
          result.calendar.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(DateTime)]))!
              as BuiltList<Object?>);
          break;
        case 'feelsets':
          result.feelsets.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(FeelSetStruct)]))!
              as BuiltList<Object?>);
          break;
        case 'days7':
          result.days7 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'nickname':
          result.nickname = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'birth':
          result.birth = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'whoU':
          result.whoU = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'company':
          result.company = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'cash':
          result.cash = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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

class _$PersonRecord extends PersonRecord {
  @override
  final String? email;
  @override
  final String? displayName;
  @override
  final String? photoUrl;
  @override
  final String? uid;
  @override
  final DateTime? createdTime;
  @override
  final String? phoneNumber;
  @override
  final BuiltList<String>? certificate;
  @override
  final String? introduce;
  @override
  final BuiltList<String>? after;
  @override
  final BuiltList<DateTime>? calendar;
  @override
  final BuiltList<FeelSetStruct>? feelsets;
  @override
  final String? days7;
  @override
  final String? nickname;
  @override
  final String? password;
  @override
  final String? birth;
  @override
  final String? gender;
  @override
  final String? whoU;
  @override
  final String? company;
  @override
  final int? cash;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PersonRecord([void Function(PersonRecordBuilder)? updates]) =>
      (new PersonRecordBuilder()..update(updates))._build();

  _$PersonRecord._(
      {this.email,
      this.displayName,
      this.photoUrl,
      this.uid,
      this.createdTime,
      this.phoneNumber,
      this.certificate,
      this.introduce,
      this.after,
      this.calendar,
      this.feelsets,
      this.days7,
      this.nickname,
      this.password,
      this.birth,
      this.gender,
      this.whoU,
      this.company,
      this.cash,
      this.ffRef})
      : super._();

  @override
  PersonRecord rebuild(void Function(PersonRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PersonRecordBuilder toBuilder() => new PersonRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PersonRecord &&
        email == other.email &&
        displayName == other.displayName &&
        photoUrl == other.photoUrl &&
        uid == other.uid &&
        createdTime == other.createdTime &&
        phoneNumber == other.phoneNumber &&
        certificate == other.certificate &&
        introduce == other.introduce &&
        after == other.after &&
        calendar == other.calendar &&
        feelsets == other.feelsets &&
        days7 == other.days7 &&
        nickname == other.nickname &&
        password == other.password &&
        birth == other.birth &&
        gender == other.gender &&
        whoU == other.whoU &&
        company == other.company &&
        cash == other.cash &&
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
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc(0, email.hashCode),
                                                                                displayName.hashCode),
                                                                            photoUrl.hashCode),
                                                                        uid.hashCode),
                                                                    createdTime.hashCode),
                                                                phoneNumber.hashCode),
                                                            certificate.hashCode),
                                                        introduce.hashCode),
                                                    after.hashCode),
                                                calendar.hashCode),
                                            feelsets.hashCode),
                                        days7.hashCode),
                                    nickname.hashCode),
                                password.hashCode),
                            birth.hashCode),
                        gender.hashCode),
                    whoU.hashCode),
                company.hashCode),
            cash.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PersonRecord')
          ..add('email', email)
          ..add('displayName', displayName)
          ..add('photoUrl', photoUrl)
          ..add('uid', uid)
          ..add('createdTime', createdTime)
          ..add('phoneNumber', phoneNumber)
          ..add('certificate', certificate)
          ..add('introduce', introduce)
          ..add('after', after)
          ..add('calendar', calendar)
          ..add('feelsets', feelsets)
          ..add('days7', days7)
          ..add('nickname', nickname)
          ..add('password', password)
          ..add('birth', birth)
          ..add('gender', gender)
          ..add('whoU', whoU)
          ..add('company', company)
          ..add('cash', cash)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PersonRecordBuilder
    implements Builder<PersonRecord, PersonRecordBuilder> {
  _$PersonRecord? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  ListBuilder<String>? _certificate;
  ListBuilder<String> get certificate =>
      _$this._certificate ??= new ListBuilder<String>();
  set certificate(ListBuilder<String>? certificate) =>
      _$this._certificate = certificate;

  String? _introduce;
  String? get introduce => _$this._introduce;
  set introduce(String? introduce) => _$this._introduce = introduce;

  ListBuilder<String>? _after;
  ListBuilder<String> get after => _$this._after ??= new ListBuilder<String>();
  set after(ListBuilder<String>? after) => _$this._after = after;

  ListBuilder<DateTime>? _calendar;
  ListBuilder<DateTime> get calendar =>
      _$this._calendar ??= new ListBuilder<DateTime>();
  set calendar(ListBuilder<DateTime>? calendar) => _$this._calendar = calendar;

  ListBuilder<FeelSetStruct>? _feelsets;
  ListBuilder<FeelSetStruct> get feelsets =>
      _$this._feelsets ??= new ListBuilder<FeelSetStruct>();
  set feelsets(ListBuilder<FeelSetStruct>? feelsets) =>
      _$this._feelsets = feelsets;

  String? _days7;
  String? get days7 => _$this._days7;
  set days7(String? days7) => _$this._days7 = days7;

  String? _nickname;
  String? get nickname => _$this._nickname;
  set nickname(String? nickname) => _$this._nickname = nickname;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _birth;
  String? get birth => _$this._birth;
  set birth(String? birth) => _$this._birth = birth;

  String? _gender;
  String? get gender => _$this._gender;
  set gender(String? gender) => _$this._gender = gender;

  String? _whoU;
  String? get whoU => _$this._whoU;
  set whoU(String? whoU) => _$this._whoU = whoU;

  String? _company;
  String? get company => _$this._company;
  set company(String? company) => _$this._company = company;

  int? _cash;
  int? get cash => _$this._cash;
  set cash(int? cash) => _$this._cash = cash;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PersonRecordBuilder() {
    PersonRecord._initializeBuilder(this);
  }

  PersonRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _displayName = $v.displayName;
      _photoUrl = $v.photoUrl;
      _uid = $v.uid;
      _createdTime = $v.createdTime;
      _phoneNumber = $v.phoneNumber;
      _certificate = $v.certificate?.toBuilder();
      _introduce = $v.introduce;
      _after = $v.after?.toBuilder();
      _calendar = $v.calendar?.toBuilder();
      _feelsets = $v.feelsets?.toBuilder();
      _days7 = $v.days7;
      _nickname = $v.nickname;
      _password = $v.password;
      _birth = $v.birth;
      _gender = $v.gender;
      _whoU = $v.whoU;
      _company = $v.company;
      _cash = $v.cash;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PersonRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PersonRecord;
  }

  @override
  void update(void Function(PersonRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PersonRecord build() => _build();

  _$PersonRecord _build() {
    _$PersonRecord _$result;
    try {
      _$result = _$v ??
          new _$PersonRecord._(
              email: email,
              displayName: displayName,
              photoUrl: photoUrl,
              uid: uid,
              createdTime: createdTime,
              phoneNumber: phoneNumber,
              certificate: _certificate?.build(),
              introduce: introduce,
              after: _after?.build(),
              calendar: _calendar?.build(),
              feelsets: _feelsets?.build(),
              days7: days7,
              nickname: nickname,
              password: password,
              birth: birth,
              gender: gender,
              whoU: whoU,
              company: company,
              cash: cash,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'certificate';
        _certificate?.build();

        _$failedField = 'after';
        _after?.build();
        _$failedField = 'calendar';
        _calendar?.build();
        _$failedField = 'feelsets';
        _feelsets?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PersonRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
