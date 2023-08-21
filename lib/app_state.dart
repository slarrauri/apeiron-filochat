import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _isOnboarding = prefs.getBool('ff_isOnboarding') ?? _isOnboarding;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  int _onboardingLenght = 2;
  int get onboardingLenght => _onboardingLenght;
  set onboardingLenght(int _value) {
    _onboardingLenght = _value;
  }

  CurrentChatBotStruct _currentFilosofoState =
      CurrentChatBotStruct.fromSerializableMap(jsonDecode(
          '{\"filosofoChatBotUrl\":\"https://creadordebots.apeiron.bio/chatbot/046dae1b-4f31-49e8-be16-78711ed5a2a4\"}'));
  CurrentChatBotStruct get currentFilosofoState => _currentFilosofoState;
  set currentFilosofoState(CurrentChatBotStruct _value) {
    _currentFilosofoState = _value;
  }

  void updateCurrentFilosofoStateStruct(
      Function(CurrentChatBotStruct) updateFn) {
    updateFn(_currentFilosofoState);
  }

  bool _isOnboarding = false;
  bool get isOnboarding => _isOnboarding;
  set isOnboarding(bool _value) {
    _isOnboarding = _value;
    prefs.setBool('ff_isOnboarding', _value);
  }

  String _defaultChatBot =
      'https://creadordebots.apeiron.bio/chatbot/046dae1b-4f31-49e8-be16-78711ed5a2a4';
  String get defaultChatBot => _defaultChatBot;
  set defaultChatBot(String _value) {
    _defaultChatBot = _value;
  }

  String _version = 'v1.7.0';
  String get version => _version;
  set version(String _value) {
    _version = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
