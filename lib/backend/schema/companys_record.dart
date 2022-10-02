import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'companys_record.g.dart';

abstract class CompanysRecord
    implements Built<CompanysRecord, CompanysRecordBuilder> {
  static Serializer<CompanysRecord> get serializer =>
      _$companysRecordSerializer;

  @BuiltValueField(wireName: 'Name')
  String? get name;

  @BuiltValueField(wireName: 'Info')
  String? get info;

  @BuiltValueField(wireName: 'Text')
  String? get text;

  @BuiltValueField(wireName: 'IMG')
  String? get img;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CompanysRecordBuilder builder) => builder
    ..name = ''
    ..info = ''
    ..text = ''
    ..img = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Companys');

  static Stream<CompanysRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CompanysRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CompanysRecord._();
  factory CompanysRecord([void Function(CompanysRecordBuilder) updates]) =
      _$CompanysRecord;

  static CompanysRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCompanysRecordData({
  String? name,
  String? info,
  String? text,
  String? img,
}) {
  final firestoreData = serializers.toFirestore(
    CompanysRecord.serializer,
    CompanysRecord(
      (c) => c
        ..name = name
        ..info = info
        ..text = text
        ..img = img,
    ),
  );

  return firestoreData;
}
