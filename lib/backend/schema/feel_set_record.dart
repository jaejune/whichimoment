import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'feel_set_record.g.dart';

abstract class FeelSetRecord
    implements Built<FeelSetRecord, FeelSetRecordBuilder> {
  static Serializer<FeelSetRecord> get serializer => _$feelSetRecordSerializer;

  BuiltList<int>? get feels;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(FeelSetRecordBuilder builder) =>
      builder..feels = ListBuilder();

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('feelSet')
          : FirebaseFirestore.instance.collectionGroup('feelSet');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('feelSet').doc();

  static Stream<FeelSetRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<FeelSetRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  FeelSetRecord._();
  factory FeelSetRecord([void Function(FeelSetRecordBuilder) updates]) =
      _$FeelSetRecord;

  static FeelSetRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createFeelSetRecordData() {
  final firestoreData = serializers.toFirestore(
    FeelSetRecord.serializer,
    FeelSetRecord(
      (f) => f..feels = null,
    ),
  );

  return firestoreData;
}
