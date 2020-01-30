import 'package:kptech/model/Entry.dart';

class Bloc {
  static Bloc _instance;
  Entry entryToBeSent;

  Bloc._internal() {
    entryToBeSent = new Entry();
  }

  Bloc getInstance() {
    if (_instance == null) _instance = new Bloc._internal();
    return _instance;
  }
}
