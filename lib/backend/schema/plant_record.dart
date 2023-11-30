import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class PlantRecord extends FirestoreRecord {
  PlantRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  bool hasId() => _id != null;

  // "common_name" field.
  String? _commonName;
  String get commonName => _commonName ?? '';
  bool hasCommonName() => _commonName != null;

  // "scientific_name" field.
  String? _scientificName;
  String get scientificName => _scientificName ?? '';
  bool hasScientificName() => _scientificName != null;

  // "image_url" field.
  String? _imageUrl;
  String get imageUrl => _imageUrl ?? '';
  bool hasImageUrl() => _imageUrl != null;

  void _initializeFields() {
    _id = castToType<int>(snapshotData['id']);
    _commonName = snapshotData['common_name'] as String?;
    _scientificName = snapshotData['scientific_name'] as String?;
    _imageUrl = snapshotData['image_url'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('plant');

  static Stream<PlantRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PlantRecord.fromSnapshot(s));

  static Future<PlantRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PlantRecord.fromSnapshot(s));

  static PlantRecord fromSnapshot(DocumentSnapshot snapshot) => PlantRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PlantRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PlantRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PlantRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PlantRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPlantRecordData({
  int? id,
  String? commonName,
  String? scientificName,
  String? imageUrl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'common_name': commonName,
      'scientific_name': scientificName,
      'image_url': imageUrl,
    }.withoutNulls,
  );

  return firestoreData;
}

class PlantRecordDocumentEquality implements Equality<PlantRecord> {
  const PlantRecordDocumentEquality();

  @override
  bool equals(PlantRecord? e1, PlantRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.commonName == e2?.commonName &&
        e1?.scientificName == e2?.scientificName &&
        e1?.imageUrl == e2?.imageUrl;
  }

  @override
  int hash(PlantRecord? e) => const ListEquality()
      .hash([e?.id, e?.commonName, e?.scientificName, e?.imageUrl]);

  @override
  bool isValidKey(Object? o) => o is PlantRecord;
}
