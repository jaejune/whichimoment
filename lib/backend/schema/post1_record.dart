import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'post1_record.g.dart';

abstract class Post1Record implements Built<Post1Record, Post1RecordBuilder> {
  static Serializer<Post1Record> get serializer => _$post1RecordSerializer;

  String? get title;

  bool? get answerR;

  String? get text;

  int? get goodNum;

  String? get postHead;

  String? get url;

  DocumentReference? get ref;

  String? get postID;

  BuiltList<String>? get postCategory;

  DateTime? get createTime;

  int? get view;

  String? get image;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(Post1RecordBuilder builder) => builder
    ..title = ''
    ..answerR = false
    ..text = ''
    ..goodNum = 0
    ..postHead = ''
    ..url = ''
    ..postID = ''
    ..postCategory = ListBuilder()
    ..view = 0
    ..image = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Post1');

  static Stream<Post1Record> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<Post1Record> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  Post1Record._();
  factory Post1Record([void Function(Post1RecordBuilder) updates]) =
      _$Post1Record;

  static Post1Record getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPost1RecordData({
  String? title,
  bool? answerR,
  String? text,
  int? goodNum,
  String? postHead,
  String? url,
  DocumentReference? ref,
  String? postID,
  DateTime? createTime,
  int? view,
  String? image,
}) {
  final firestoreData = serializers.toFirestore(
    Post1Record.serializer,
    Post1Record(
      (p) => p
        ..title = title
        ..answerR = answerR
        ..text = text
        ..goodNum = goodNum
        ..postHead = postHead
        ..url = url
        ..ref = ref
        ..postID = postID
        ..postCategory = null
        ..createTime = createTime
        ..view = view
        ..image = image,
    ),
  );

  return firestoreData;
}
