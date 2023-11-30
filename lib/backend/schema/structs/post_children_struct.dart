// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PostChildrenStruct extends FFFirebaseStruct {
  PostChildrenStruct({
    List<PostsStruct>? children,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _children = children,
        super(firestoreUtilData);

  // "children" field.
  List<PostsStruct>? _children;
  List<PostsStruct> get children => _children ?? const [];
  set children(List<PostsStruct>? val) => _children = val;
  void updateChildren(Function(List<PostsStruct>) updateFn) =>
      updateFn(_children ??= []);
  bool hasChildren() => _children != null;

  static PostChildrenStruct fromMap(Map<String, dynamic> data) =>
      PostChildrenStruct(
        children: getStructList(
          data['children'],
          PostsStruct.fromMap,
        ),
      );

  static PostChildrenStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? PostChildrenStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'children': _children?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'children': serializeParam(
          _children,
          ParamType.DataStruct,
          true,
        ),
      }.withoutNulls;

  static PostChildrenStruct fromSerializableMap(Map<String, dynamic> data) =>
      PostChildrenStruct(
        children: deserializeStructParam<PostsStruct>(
          data['children'],
          ParamType.DataStruct,
          true,
          structBuilder: PostsStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'PostChildrenStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is PostChildrenStruct &&
        listEquality.equals(children, other.children);
  }

  @override
  int get hashCode => const ListEquality().hash([children]);
}

PostChildrenStruct createPostChildrenStruct({
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PostChildrenStruct(
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PostChildrenStruct? updatePostChildrenStruct(
  PostChildrenStruct? postChildren, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    postChildren
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPostChildrenStructData(
  Map<String, dynamic> firestoreData,
  PostChildrenStruct? postChildren,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (postChildren == null) {
    return;
  }
  if (postChildren.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && postChildren.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final postChildrenData =
      getPostChildrenFirestoreData(postChildren, forFieldValue);
  final nestedData =
      postChildrenData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = postChildren.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPostChildrenFirestoreData(
  PostChildrenStruct? postChildren, [
  bool forFieldValue = false,
]) {
  if (postChildren == null) {
    return {};
  }
  final firestoreData = mapToFirestore(postChildren.toMap());

  // Add any Firestore field values
  postChildren.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPostChildrenListFirestoreData(
  List<PostChildrenStruct>? postChildrens,
) =>
    postChildrens?.map((e) => getPostChildrenFirestoreData(e, true)).toList() ??
    [];
