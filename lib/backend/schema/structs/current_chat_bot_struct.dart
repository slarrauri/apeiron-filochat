// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CurrentChatBotStruct extends FFFirebaseStruct {
  CurrentChatBotStruct({
    String? filosofoId,
    String? filosofoName,
    String? filosofoChatBotUrl,
    String? filosofoImage,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _filosofoId = filosofoId,
        _filosofoName = filosofoName,
        _filosofoChatBotUrl = filosofoChatBotUrl,
        _filosofoImage = filosofoImage,
        super(firestoreUtilData);

  // "filosofoId" field.
  String? _filosofoId;
  String get filosofoId => _filosofoId ?? '';
  set filosofoId(String? val) => _filosofoId = val;
  bool hasFilosofoId() => _filosofoId != null;

  // "filosofoName" field.
  String? _filosofoName;
  String get filosofoName => _filosofoName ?? '';
  set filosofoName(String? val) => _filosofoName = val;
  bool hasFilosofoName() => _filosofoName != null;

  // "filosofoChatBotUrl" field.
  String? _filosofoChatBotUrl;
  String get filosofoChatBotUrl => _filosofoChatBotUrl ?? '';
  set filosofoChatBotUrl(String? val) => _filosofoChatBotUrl = val;
  bool hasFilosofoChatBotUrl() => _filosofoChatBotUrl != null;

  // "filosofoImage" field.
  String? _filosofoImage;
  String get filosofoImage => _filosofoImage ?? '';
  set filosofoImage(String? val) => _filosofoImage = val;
  bool hasFilosofoImage() => _filosofoImage != null;

  static CurrentChatBotStruct fromMap(Map<String, dynamic> data) =>
      CurrentChatBotStruct(
        filosofoId: data['filosofoId'] as String?,
        filosofoName: data['filosofoName'] as String?,
        filosofoChatBotUrl: data['filosofoChatBotUrl'] as String?,
        filosofoImage: data['filosofoImage'] as String?,
      );

  static CurrentChatBotStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? CurrentChatBotStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'filosofoId': _filosofoId,
        'filosofoName': _filosofoName,
        'filosofoChatBotUrl': _filosofoChatBotUrl,
        'filosofoImage': _filosofoImage,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'filosofoId': serializeParam(
          _filosofoId,
          ParamType.String,
        ),
        'filosofoName': serializeParam(
          _filosofoName,
          ParamType.String,
        ),
        'filosofoChatBotUrl': serializeParam(
          _filosofoChatBotUrl,
          ParamType.String,
        ),
        'filosofoImage': serializeParam(
          _filosofoImage,
          ParamType.String,
        ),
      }.withoutNulls;

  static CurrentChatBotStruct fromSerializableMap(Map<String, dynamic> data) =>
      CurrentChatBotStruct(
        filosofoId: deserializeParam(
          data['filosofoId'],
          ParamType.String,
          false,
        ),
        filosofoName: deserializeParam(
          data['filosofoName'],
          ParamType.String,
          false,
        ),
        filosofoChatBotUrl: deserializeParam(
          data['filosofoChatBotUrl'],
          ParamType.String,
          false,
        ),
        filosofoImage: deserializeParam(
          data['filosofoImage'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CurrentChatBotStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CurrentChatBotStruct &&
        filosofoId == other.filosofoId &&
        filosofoName == other.filosofoName &&
        filosofoChatBotUrl == other.filosofoChatBotUrl &&
        filosofoImage == other.filosofoImage;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([filosofoId, filosofoName, filosofoChatBotUrl, filosofoImage]);
}

CurrentChatBotStruct createCurrentChatBotStruct({
  String? filosofoId,
  String? filosofoName,
  String? filosofoChatBotUrl,
  String? filosofoImage,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CurrentChatBotStruct(
      filosofoId: filosofoId,
      filosofoName: filosofoName,
      filosofoChatBotUrl: filosofoChatBotUrl,
      filosofoImage: filosofoImage,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CurrentChatBotStruct? updateCurrentChatBotStruct(
  CurrentChatBotStruct? currentChatBot, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    currentChatBot
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCurrentChatBotStructData(
  Map<String, dynamic> firestoreData,
  CurrentChatBotStruct? currentChatBot,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (currentChatBot == null) {
    return;
  }
  if (currentChatBot.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && currentChatBot.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final currentChatBotData =
      getCurrentChatBotFirestoreData(currentChatBot, forFieldValue);
  final nestedData =
      currentChatBotData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = currentChatBot.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCurrentChatBotFirestoreData(
  CurrentChatBotStruct? currentChatBot, [
  bool forFieldValue = false,
]) {
  if (currentChatBot == null) {
    return {};
  }
  final firestoreData = mapToFirestore(currentChatBot.toMap());

  // Add any Firestore field values
  currentChatBot.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCurrentChatBotListFirestoreData(
  List<CurrentChatBotStruct>? currentChatBots,
) =>
    currentChatBots
        ?.map((e) => getCurrentChatBotFirestoreData(e, true))
        .toList() ??
    [];
