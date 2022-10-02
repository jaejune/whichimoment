import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'post_record.g.dart';

abstract class PostRecord implements Built<PostRecord, PostRecordBuilder> {
  static Serializer<PostRecord> get serializer => _$postRecordSerializer;

  @BuiltValueField(wireName: 'Title')
  String? get title;

  @BuiltValueField(wireName: 'Time')
  String? get time;

  @BuiltValueField(wireName: 'Name')
  String? get name;

  @BuiltValueField(wireName: 'IMG')
  String? get img;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PostRecordBuilder builder) => builder
    ..title = ''
    ..time = ''
    ..name = ''
    ..img = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Post');

  static Stream<PostRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PostRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PostRecord._();
  factory PostRecord([void Function(PostRecordBuilder) updates]) = _$PostRecord;

  static PostRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPostRecordData({
  String? title,
  String? time,
  String? name,
  String? img,
}) {
  final firestoreData = serializers.toFirestore(
    PostRecord.serializer,
    PostRecord(
      (p) => p
        ..title = title
        ..time = time
        ..name = name
        ..img = img,
    ),
  );

  return firestoreData;
}
