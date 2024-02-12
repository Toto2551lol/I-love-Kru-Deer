import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MedRecRecord extends FirestoreRecord {
  MedRecRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "tel" field.
  String? _tel;
  String get tel => _tel ?? '';
  bool hasTel() => _tel != null;

  // "Description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  void _initializeFields() {
    _name = snapshotData['Name'] as String?;
    _tel = snapshotData['tel'] as String?;
    _description = snapshotData['Description'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('med-rec');

  static Stream<MedRecRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MedRecRecord.fromSnapshot(s));

  static Future<MedRecRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MedRecRecord.fromSnapshot(s));

  static MedRecRecord fromSnapshot(DocumentSnapshot snapshot) => MedRecRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MedRecRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MedRecRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MedRecRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MedRecRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMedRecRecordData({
  String? name,
  String? tel,
  String? description,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Name': name,
      'tel': tel,
      'Description': description,
    }.withoutNulls,
  );

  return firestoreData;
}

class MedRecRecordDocumentEquality implements Equality<MedRecRecord> {
  const MedRecRecordDocumentEquality();

  @override
  bool equals(MedRecRecord? e1, MedRecRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.tel == e2?.tel &&
        e1?.description == e2?.description;
  }

  @override
  int hash(MedRecRecord? e) =>
      const ListEquality().hash([e?.name, e?.tel, e?.description]);

  @override
  bool isValidKey(Object? o) => o is MedRecRecord;
}
