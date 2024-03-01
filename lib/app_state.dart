import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  bool _choicechipLot = false;
  bool get choicechipLot => _choicechipLot;
  set choicechipLot(bool value) {
    _choicechipLot = value;
  }

  bool _datalistdhow = false;
  bool get datalistdhow => _datalistdhow;
  set datalistdhow(bool value) {
    _datalistdhow = value;
  }

  bool _totalamountbydateAPI = false;
  bool get totalamountbydateAPI => _totalamountbydateAPI;
  set totalamountbydateAPI(bool value) {
    _totalamountbydateAPI = value;
  }

  bool _listdatabetweendategpt = false;
  bool get listdatabetweendategpt => _listdatabetweendategpt;
  set listdatabetweendategpt(bool value) {
    _listdatabetweendategpt = value;
  }
}
