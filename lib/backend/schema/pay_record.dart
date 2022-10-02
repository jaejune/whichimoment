import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'pay_record.g.dart';

abstract class PayRecord implements Built<PayRecord, PayRecordBuilder> {
  static Serializer<PayRecord> get serializer => _$payRecordSerializer;

  int? get price;

  DateTime? get day;

  String? get whowith;

  DocumentReference? get ref;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(PayRecordBuilder builder) => builder
    ..price = 0
    ..whowith = '';

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('pay')
          : FirebaseFirestore.instance.collectionGroup('pay');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('pay').doc();

  static Stream<PayRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PayRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PayRecord._();
  factory PayRecord([void Function(PayRecordBuilder) updates]) = _$PayRecord;

  static PayRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPayRecordData({
  int? price,
  DateTime? day,
  String? whowith,
  DocumentReference? ref,
}) {
  final firestoreData = serializers.toFirestore(
    PayRecord.serializer,
    PayRecord(
      (p) => p
        ..price = price
        ..day = day
        ..whowith = whowith
        ..ref = ref,
    ),
  );

  return firestoreData;
}
