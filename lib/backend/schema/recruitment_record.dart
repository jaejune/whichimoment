import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'recruitment_record.g.dart';

abstract class RecruitmentRecord
    implements Built<RecruitmentRecord, RecruitmentRecordBuilder> {
  static Serializer<RecruitmentRecord> get serializer =>
      _$recruitmentRecordSerializer;

  String? get no;

  DateTime? get start;

  DateTime? get end;

  @BuiltValueField(wireName: 'Title')
  String? get title;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(RecruitmentRecordBuilder builder) => builder
    ..no = ''
    ..title = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Recruitment');

  static Stream<RecruitmentRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<RecruitmentRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  RecruitmentRecord._();
  factory RecruitmentRecord([void Function(RecruitmentRecordBuilder) updates]) =
      _$RecruitmentRecord;

  static RecruitmentRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createRecruitmentRecordData({
  String? no,
  DateTime? start,
  DateTime? end,
  String? title,
}) {
  final firestoreData = serializers.toFirestore(
    RecruitmentRecord.serializer,
    RecruitmentRecord(
      (r) => r
        ..no = no
        ..start = start
        ..end = end
        ..title = title,
    ),
  );

  return firestoreData;
}
