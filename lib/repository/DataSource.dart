import 'package:firebase_database/firebase_database.dart';
import 'package:kptech/model/Entry.dart';

class DataSource {
  static DataSource _source;

  static getDataSource() {
    if (_source == null) _source = new DataSource._internal();
    return _source;
  }

  DataSource._internal();

  Future<bool> sendDataToServer(Entry entry) async {
    await FirebaseDatabase.instance.reference().child("sdasdf").set("");
    return true;
  }
}
