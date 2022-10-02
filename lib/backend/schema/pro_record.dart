import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'pro_record.g.dart';

abstract class ProRecord implements Built<ProRecord, ProRecordBuilder> {
  static Serializer<ProRecord> get serializer => _$proRecordSerializer;

  @BuiltValueField(wireName: 'pro_name')
  String? get proName;

  @BuiltValueField(wireName: 'Pro_info')
  String? get proInfo;

  @BuiltValueField(wireName: 'History')
  String? get history;

  @BuiltValueField(wireName: 'Date')
  String? get date;

  @BuiltValueField(wireName: 'Intro')
  String? get intro;

  @BuiltValueField(wireName: 'Star')
  String? get star;

  String? get review;

  @BuiltValueField(wireName: 'IMG')
  String? get img;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ProRecordBuilder builder) => builder
    ..proName = ''
    ..proInfo = ''
    ..history = ''
    ..date = ''
    ..intro = ''
    ..star = ''
    ..review = ''
    ..img = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Pro');

  static Stream<ProRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ProRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ProRecord._();
  factory ProRecord([void Function(ProRecordBuilder) updates]) = _$ProRecord;

  static ProRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createProRecordData({
  String? proName,
  String? proInfo,
  String? history,
  String? date,
  String? intro,
  String? star,
  String? review,
  String? img,
}) {
  final firestoreData = serializers.toFirestore(
    ProRecord.serializer,
    ProRecord(
      (p) => p
        ..proName = proName
        ..proInfo = proInfo
        ..history = history
        ..date = date
        ..intro = intro
        ..star = star
        ..review = review
        ..img = img,
    ),
  );

  return firestoreData;
}
