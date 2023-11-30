// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PlantStruct extends FFFirebaseStruct {
  PlantStruct({
    int? id,
    String? commonName,
    String? scientificName,
    String? imageUrl,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _commonName = commonName,
        _scientificName = scientificName,
        _imageUrl = imageUrl,
        super(firestoreUtilData);

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  // "common_name" field.
  String? _commonName;
  String get commonName => _commonName ?? '';
  set commonName(String? val) => _commonName = val;
  bool hasCommonName() => _commonName != null;

  // "scientific_name" field.
  String? _scientificName;
  String get scientificName => _scientificName ?? '';
  set scientificName(String? val) => _scientificName = val;
  bool hasScientificName() => _scientificName != null;

  // "image_url" field.
  String? _imageUrl;
  String get imageUrl => _imageUrl ?? '';
  set imageUrl(String? val) => _imageUrl = val;
  bool hasImageUrl() => _imageUrl != null;

  static PlantStruct fromMap(Map<String, dynamic> data) => PlantStruct(
        id: castToType<int>(data['id']),
        commonName: data['common_name'] as String?,
        scientificName: data['scientific_name'] as String?,
        imageUrl: data['image_url'] as String?,
      );

  static PlantStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? PlantStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'common_name': _commonName,
        'scientific_name': _scientificName,
        'image_url': _imageUrl,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'common_name': serializeParam(
          _commonName,
          ParamType.String,
        ),
        'scientific_name': serializeParam(
          _scientificName,
          ParamType.String,
        ),
        'image_url': serializeParam(
          _imageUrl,
          ParamType.String,
        ),
      }.withoutNulls;

  static PlantStruct fromSerializableMap(Map<String, dynamic> data) =>
      PlantStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        commonName: deserializeParam(
          data['common_name'],
          ParamType.String,
          false,
        ),
        scientificName: deserializeParam(
          data['scientific_name'],
          ParamType.String,
          false,
        ),
        imageUrl: deserializeParam(
          data['image_url'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PlantStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PlantStruct &&
        id == other.id &&
        commonName == other.commonName &&
        scientificName == other.scientificName &&
        imageUrl == other.imageUrl;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, commonName, scientificName, imageUrl]);
}

PlantStruct createPlantStruct({
  int? id,
  String? commonName,
  String? scientificName,
  String? imageUrl,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PlantStruct(
      id: id,
      commonName: commonName,
      scientificName: scientificName,
      imageUrl: imageUrl,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PlantStruct? updatePlantStruct(
  PlantStruct? plant, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    plant
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPlantStructData(
  Map<String, dynamic> firestoreData,
  PlantStruct? plant,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (plant == null) {
    return;
  }
  if (plant.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && plant.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final plantData = getPlantFirestoreData(plant, forFieldValue);
  final nestedData = plantData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = plant.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPlantFirestoreData(
  PlantStruct? plant, [
  bool forFieldValue = false,
]) {
  if (plant == null) {
    return {};
  }
  final firestoreData = mapToFirestore(plant.toMap());

  // Add any Firestore field values
  plant.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPlantListFirestoreData(
  List<PlantStruct>? plants,
) =>
    plants?.map((e) => getPlantFirestoreData(e, true)).toList() ?? [];
