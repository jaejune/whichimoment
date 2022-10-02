import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'consulatation_record.g.dart';

abstract class ConsulatationRecord
    implements Built<ConsulatationRecord, ConsulatationRecordBuilder> {
  static Serializer<ConsulatationRecord> get serializer =>
      _$consulatationRecordSerializer;

  String? get whowith;

  DateTime? get time;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(ConsulatationRecordBuilder builder) =>
      builder..whowith = '';

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('consulatation')
          : FirebaseFirestore.instance.collectionGroup('consulatation');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('consulatation').doc();

  static Stream<ConsulatationRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ConsulatationRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ConsulatationRecord._();
  factory ConsulatationRecord(
          [void Function(ConsulatationRecordBuilder) updates]) =
      _$ConsulatationRecord;

  static ConsulatationRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createConsulatationRecordData({
  String? whowith,
  DateTime? time,
}) {
  final firestoreData = serializers.toFirestore(
    ConsulatationRecord.serializer,
    ConsulatationRecord(
      (c) => c
        ..whowith = whowith
        ..time = time,
    ),
  );

  return firestoreData;
}
