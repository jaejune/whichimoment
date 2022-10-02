import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'student_record.g.dart';

abstract class StudentRecord
    implements Built<StudentRecord, StudentRecordBuilder> {
  static Serializer<StudentRecord> get serializer => _$studentRecordSerializer;

  @BuiltValueField(wireName: 'St_name')
  String? get stName;

  String? get date;

  String? get info;

  String? get text;

  @BuiltValueField(wireName: 'IMG')
  String? get img;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(StudentRecordBuilder builder) => builder
    ..stName = ''
    ..date = ''
    ..info = ''
    ..text = ''
    ..img = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Student');

  static Stream<StudentRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<StudentRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  StudentRecord._();
  factory StudentRecord([void Function(StudentRecordBuilder) updates]) =
      _$StudentRecord;

  static StudentRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createStudentRecordData({
  String? stName,
  String? date,
  String? info,
  String? text,
  String? img,
}) {
  final firestoreData = serializers.toFirestore(
    StudentRecord.serializer,
    StudentRecord(
      (s) => s
        ..stName = stName
        ..date = date
        ..info = info
        ..text = text
        ..img = img,
    ),
  );

  return firestoreData;
}
