import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'recommend_record.g.dart';

abstract class RecommendRecord
    implements Built<RecommendRecord, RecommendRecordBuilder> {
  static Serializer<RecommendRecord> get serializer =>
      _$recommendRecordSerializer;

  String? get title;

  String? get text;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  String? get recom;

  DateTime? get time;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(RecommendRecordBuilder builder) => builder
    ..title = ''
    ..text = ''
    ..displayName = ''
    ..recom = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('recommend');

  static Stream<RecommendRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<RecommendRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  RecommendRecord._();
  factory RecommendRecord([void Function(RecommendRecordBuilder) updates]) =
      _$RecommendRecord;

  static RecommendRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createRecommendRecordData({
  String? title,
  String? text,
  String? displayName,
  String? recom,
  DateTime? time,
}) {
  final firestoreData = serializers.toFirestore(
    RecommendRecord.serializer,
    RecommendRecord(
      (r) => r
        ..title = title
        ..text = text
        ..displayName = displayName
        ..recom = recom
        ..time = time,
    ),
  );

  return firestoreData;
}
