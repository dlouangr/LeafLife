// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class PostsStruct extends FFFirebaseStruct {
  PostsStruct({
    String? selftext,
    String? title,
    String? thumbnail,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _selftext = selftext,
        _title = title,
        _thumbnail = thumbnail,
        super(firestoreUtilData);

  // "selftext" field.
  String? _selftext;
  String get selftext => _selftext ?? '';
  set selftext(String? val) => _selftext = val;
  bool hasSelftext() => _selftext != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;
  bool hasTitle() => _title != null;

  // "thumbnail" field.
  String? _thumbnail;
  String get thumbnail => _thumbnail ?? '';
  set thumbnail(String? val) => _thumbnail = val;
  bool hasThumbnail() => _thumbnail != null;

  static PostsStruct fromMap(Map<String, dynamic> data) => PostsStruct(
        selftext: data['selftext'] as String?,
        title: data['title'] as String?,
        thumbnail: data['thumbnail'] as String?,
      );

  static PostsStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? PostsStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'selftext': _selftext,
        'title': _title,
        'thumbnail': _thumbnail,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'selftext': serializeParam(
          _selftext,
          ParamType.String,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'thumbnail': serializeParam(
          _thumbnail,
          ParamType.String,
        ),
      }.withoutNulls;

  static PostsStruct fromSerializableMap(Map<String, dynamic> data) =>
      PostsStruct(
        selftext: deserializeParam(
          data['selftext'],
          ParamType.String,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        thumbnail: deserializeParam(
          data['thumbnail'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PostsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PostsStruct &&
        selftext == other.selftext &&
        title == other.title &&
        thumbnail == other.thumbnail;
  }

  @override
  int get hashCode => const ListEquality().hash([selftext, title, thumbnail]);
}

PostsStruct createPostsStruct({
  String? selftext,
  String? title,
  String? thumbnail,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PostsStruct(
      selftext: selftext,
      title: title,
      thumbnail: thumbnail,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PostsStruct? updatePostsStruct(
  PostsStruct? posts, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    posts
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPostsStructData(
  Map<String, dynamic> firestoreData,
  PostsStruct? posts,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (posts == null) {
    return;
  }
  if (posts.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && posts.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final postsData = getPostsFirestoreData(posts, forFieldValue);
  final nestedData = postsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = posts.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPostsFirestoreData(
  PostsStruct? posts, [
  bool forFieldValue = false,
]) {
  if (posts == null) {
    return {};
  }
  final firestoreData = mapToFirestore(posts.toMap());

  // Add any Firestore field values
  posts.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPostsListFirestoreData(
  List<PostsStruct>? postss,
) =>
    postss?.map((e) => getPostsFirestoreData(e, true)).toList() ?? [];
