import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'person_record.g.dart';

abstract class PersonRecord
    implements Built<PersonRecord, PersonRecordBuilder> {
  static Serializer<PersonRecord> get serializer => _$personRecordSerializer;

  String? get email;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  String? get uid;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  BuiltList<String>? get certificate;

  String? get introduce;

  BuiltList<String>? get after;

  BuiltList<DateTime>? get calendar;

  BuiltList<FeelSetStruct>? get feelsets;

  String? get days7;

  String? get nickname;

  @BuiltValueField(wireName: 'Password')
  String? get password;

  String? get birth;

  @BuiltValueField(wireName: 'Gender')
  String? get gender;

  String? get whoU;

  String? get company;

  int? get cash;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PersonRecordBuilder builder) => builder
    ..email = ''
    ..displayName = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = ''
    ..certificate = ListBuilder()
    ..introduce = ''
    ..after = ListBuilder()
    ..calendar = ListBuilder()
    ..feelsets = ListBuilder()
    ..days7 = ''
    ..nickname = ''
    ..password = ''
    ..birth = ''
    ..gender = ''
    ..whoU = ''
    ..company = ''
    ..cash = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('person');

  static Stream<PersonRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PersonRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PersonRecord._();
  factory PersonRecord([void Function(PersonRecordBuilder) updates]) =
      _$PersonRecord;

  static PersonRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPersonRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? introduce,
  String? days7,
  String? nickname,
  String? password,
  String? birth,
  String? gender,
  String? whoU,
  String? company,
  int? cash,
}) {
  final firestoreData = serializers.toFirestore(
    PersonRecord.serializer,
    PersonRecord(
      (p) => p
        ..email = email
        ..displayName = displayName
        ..photoUrl = photoUrl
        ..uid = uid
        ..createdTime = createdTime
        ..phoneNumber = phoneNumber
        ..certificate = null
        ..introduce = introduce
        ..after = null
        ..calendar = null
        ..feelsets = null
        ..days7 = days7
        ..nickname = nickname
        ..password = password
        ..birth = birth
        ..gender = gender
        ..whoU = whoU
        ..company = company
        ..cash = cash,
    ),
  );

  return firestoreData;
}
