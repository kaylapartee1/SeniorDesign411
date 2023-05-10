import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'journals_record.g.dart';

abstract class JournalsRecord
    implements Built<JournalsRecord, JournalsRecordBuilder> {
  static Serializer<JournalsRecord> get serializer =>
      _$journalsRecordSerializer;

  @BuiltValueField(wireName: 'post_title')
  String? get postTitle;

  @BuiltValueField(wireName: 'post_description')
  String? get postDescription;

  @BuiltValueField(wireName: 'time_posted')
  DateTime? get timePosted;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(JournalsRecordBuilder builder) => builder
    ..postTitle = ''
    ..postDescription = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('journals');

  static Stream<JournalsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<JournalsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  JournalsRecord._();
  factory JournalsRecord([void Function(JournalsRecordBuilder) updates]) =
      _$JournalsRecord;

  static JournalsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createJournalsRecordData({
  String? postTitle,
  String? postDescription,
  DateTime? timePosted,
}) {
  final firestoreData = serializers.toFirestore(
    JournalsRecord.serializer,
    JournalsRecord(
      (j) => j
        ..postTitle = postTitle
        ..postDescription = postDescription
        ..timePosted = timePosted,
    ),
  );

  return firestoreData;
}
