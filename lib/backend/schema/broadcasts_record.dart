import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'broadcasts_record.g.dart';

abstract class BroadcastsRecord
    implements Built<BroadcastsRecord, BroadcastsRecordBuilder> {
  static Serializer<BroadcastsRecord> get serializer =>
      _$broadcastsRecordSerializer;

  @BuiltValueField(wireName: 'is_live')
  bool? get isLive;

  String? get name;

  DateTime? get time;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(BroadcastsRecordBuilder builder) => builder
    ..isLive = false
    ..name = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('broadcasts');

  static Stream<BroadcastsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<BroadcastsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  BroadcastsRecord._();
  factory BroadcastsRecord([void Function(BroadcastsRecordBuilder) updates]) =
      _$BroadcastsRecord;

  static BroadcastsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createBroadcastsRecordData({
  bool? isLive,
  String? name,
  DateTime? time,
}) {
  final firestoreData = serializers.toFirestore(
    BroadcastsRecord.serializer,
    BroadcastsRecord(
      (b) => b
        ..isLive = isLive
        ..name = name
        ..time = time,
    ),
  );

  return firestoreData;
}
