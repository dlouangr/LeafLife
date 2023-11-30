// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AllPostsStruct extends FFFirebaseStruct {
  AllPostsStruct({
    List<PostChildrenStruct>? data,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _data = data,
        super(firestoreUtilData);

  // "data" field.
  List<PostChildrenStruct>? _data;
  List<PostChildrenStruct> get data => _data ?? const [];
  set data(List<PostChildrenStruct>? val) => _data = val;
  void updateData(Function(List<PostChildrenStruct>) updateFn) =>
      updateFn(_data ??= []);
  bool hasData() => _data != null;

  static AllPostsStruct fromMap(Map<String, dynamic> data) => AllPostsStruct(
        data: getStructList(
          data['data'],
          PostChildrenStruct.fromMap,
        ),
      );

  static AllPostsStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? AllPostsStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'data': _data?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'data': serializeParam(
          _data,
          ParamType.DataStruct,
          true,
        ),
      }.withoutNulls;

  static AllPostsStruct fromSerializableMap(Map<String, dynamic> data) =>
      AllPostsStruct(
        data: deserializeStructParam<PostChildrenStruct>(
          data['data'],
          ParamType.DataStruct,
          true,
          structBuilder: PostChildrenStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'AllPostsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is AllPostsStruct && listEquality.equals(data, other.data);
  }

  @override
  int get hashCode => const ListEquality().hash([data]);
}

AllPostsStruct createAllPostsStruct({
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AllPostsStruct(
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AllPostsStruct? updateAllPostsStruct(
  AllPostsStruct? allPosts, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    allPosts
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAllPostsStructData(
  Map<String, dynamic> firestoreData,
  AllPostsStruct? allPosts,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (allPosts == null) {
    return;
  }
  if (allPosts.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && allPosts.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final allPostsData = getAllPostsFirestoreData(allPosts, forFieldValue);
  final nestedData = allPostsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = allPosts.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAllPostsFirestoreData(
  AllPostsStruct? allPosts, [
  bool forFieldValue = false,
]) {
  if (allPosts == null) {
    return {};
  }
  final firestoreData = mapToFirestore(allPosts.toMap());

  // Add any Firestore field values
  allPosts.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAllPostsListFirestoreData(
  List<AllPostsStruct>? allPostss,
) =>
    allPostss?.map((e) => getAllPostsFirestoreData(e, true)).toList() ?? [];
