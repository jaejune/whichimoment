import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'company_record.g.dart';

abstract class CompanyRecord
    implements Built<CompanyRecord, CompanyRecordBuilder> {
  static Serializer<CompanyRecord> get serializer => _$companyRecordSerializer;

  String? get name;

  String? get introduce;

  String? get homepage;

  String? get logo;

  DocumentReference? get personRef;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CompanyRecordBuilder builder) => builder
    ..name = ''
    ..introduce = ''
    ..homepage = ''
    ..logo = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('company');

  static Stream<CompanyRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CompanyRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CompanyRecord._();
  factory CompanyRecord([void Function(CompanyRecordBuilder) updates]) =
      _$CompanyRecord;

  static CompanyRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCompanyRecordData({
  String? name,
  String? introduce,
  String? homepage,
  String? logo,
  DocumentReference? personRef,
}) {
  final firestoreData = serializers.toFirestore(
    CompanyRecord.serializer,
    CompanyRecord(
      (c) => c
        ..name = name
        ..introduce = introduce
        ..homepage = homepage
        ..logo = logo
        ..personRef = personRef,
    ),
  );

  return firestoreData;
}
