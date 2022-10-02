import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'notification_record.g.dart';

abstract class NotificationRecord
    implements Built<NotificationRecord, NotificationRecordBuilder> {
  static Serializer<NotificationRecord> get serializer =>
      _$notificationRecordSerializer;

  String? get title;

  String? get text;

  DateTime? get time;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(NotificationRecordBuilder builder) => builder
    ..title = ''
    ..text = '';

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('notification')
          : FirebaseFirestore.instance.collectionGroup('notification');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('notification').doc();

  static Stream<NotificationRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<NotificationRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  NotificationRecord._();
  factory NotificationRecord(
          [void Function(NotificationRecordBuilder) updates]) =
      _$NotificationRecord;

  static NotificationRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createNotificationRecordData({
  String? title,
  String? text,
  DateTime? time,
}) {
  final firestoreData = serializers.toFirestore(
    NotificationRecord.serializer,
    NotificationRecord(
      (n) => n
        ..title = title
        ..text = text
        ..time = time,
    ),
  );

  return firestoreData;
}
