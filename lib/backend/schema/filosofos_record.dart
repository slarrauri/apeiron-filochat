import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FilosofosRecord extends FirestoreRecord {
  FilosofosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "photo" field.
  String? _photo;
  String get photo => _photo ?? '';
  bool hasPhoto() => _photo != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "ideas" field.
  String? _ideas;
  String get ideas => _ideas ?? '';
  bool hasIdeas() => _ideas != null;

  // "chat_url" field.
  String? _chatUrl;
  String get chatUrl => _chatUrl ?? '';
  bool hasChatUrl() => _chatUrl != null;

  void _initializeFields() {
    _photo = snapshotData['photo'] as String?;
    _name = snapshotData['name'] as String?;
    _ideas = snapshotData['ideas'] as String?;
    _chatUrl = snapshotData['chat_url'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('filosofos');

  static Stream<FilosofosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FilosofosRecord.fromSnapshot(s));

  static Future<FilosofosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FilosofosRecord.fromSnapshot(s));

  static FilosofosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FilosofosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FilosofosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FilosofosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FilosofosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FilosofosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFilosofosRecordData({
  String? photo,
  String? name,
  String? ideas,
  String? chatUrl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'photo': photo,
      'name': name,
      'ideas': ideas,
      'chat_url': chatUrl,
    }.withoutNulls,
  );

  return firestoreData;
}

class FilosofosRecordDocumentEquality implements Equality<FilosofosRecord> {
  const FilosofosRecordDocumentEquality();

  @override
  bool equals(FilosofosRecord? e1, FilosofosRecord? e2) {
    return e1?.photo == e2?.photo &&
        e1?.name == e2?.name &&
        e1?.ideas == e2?.ideas &&
        e1?.chatUrl == e2?.chatUrl;
  }

  @override
  int hash(FilosofosRecord? e) =>
      const ListEquality().hash([e?.photo, e?.name, e?.ideas, e?.chatUrl]);

  @override
  bool isValidKey(Object? o) => o is FilosofosRecord;
}
