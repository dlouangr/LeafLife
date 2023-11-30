// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AllPlantsStruct extends FFFirebaseStruct {
  AllPlantsStruct({
    int? id,
    List<PlantStruct>? data,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _data = data,
        super(firestoreUtilData);

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  // "data" field.
  List<PlantStruct>? _data;
  List<PlantStruct> get data => _data ?? const [];
  set data(List<PlantStruct>? val) => _data = val;
  void updateData(Function(List<PlantStruct>) updateFn) =>
      updateFn(_data ??= []);
  bool hasData() => _data != null;

  static AllPlantsStruct fromMap(Map<String, dynamic> data) => AllPlantsStruct(
        id: castToType<int>(data['id']),
        data: getStructList(
          data['data'],
          PlantStruct.fromMap,
        ),
      );

  static AllPlantsStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? AllPlantsStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'data': _data?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'data': serializeParam(
          _data,
          ParamType.DataStruct,
          true,
        ),
      }.withoutNulls;

  static AllPlantsStruct fromSerializableMap(Map<String, dynamic> data) =>
      AllPlantsStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        data: deserializeStructParam<PlantStruct>(
          data['data'],
          ParamType.DataStruct,
          true,
          structBuilder: PlantStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'AllPlantsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is AllPlantsStruct &&
        id == other.id &&
        listEquality.equals(data, other.data);
  }

  @override
  int get hashCode => const ListEquality().hash([id, data]);
}

AllPlantsStruct createAllPlantsStruct({
  int? id,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AllPlantsStruct(
      id: id,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AllPlantsStruct? updateAllPlantsStruct(
  AllPlantsStruct? allPlants, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    allPlants
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAllPlantsStructData(
  Map<String, dynamic> firestoreData,
  AllPlantsStruct? allPlants,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (allPlants == null) {
    return;
  }
  if (allPlants.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && allPlants.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final allPlantsData = getAllPlantsFirestoreData(allPlants, forFieldValue);
  final nestedData = allPlantsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = allPlants.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAllPlantsFirestoreData(
  AllPlantsStruct? allPlants, [
  bool forFieldValue = false,
]) {
  if (allPlants == null) {
    return {};
  }
  final firestoreData = mapToFirestore(allPlants.toMap());

  // Add any Firestore field values
  allPlants.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAllPlantsListFirestoreData(
  List<AllPlantsStruct>? allPlantss,
) =>
    allPlantss?.map((e) => getAllPlantsFirestoreData(e, true)).toList() ?? [];
