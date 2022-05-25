import 'package:flutter/cupertino.dart';
import '../core/database/database.dart';

class HomeViewModel extends ChangeNotifier {
  final dataBase = Database().db;

  registerUser() async {
    print("ID is-------abc");
    try {
      await dataBase
          .collection('user')
          .add({'name': 'hurair khan', 'email': 'home@gmail.com'});
    } catch (e, s) {
      print('Exception @DatabaseService/registerPatient $e');
    }
  }

  int _counter = 0;
  int get counter => _counter;
  void count() {
    _counter++;
    print('counter $_counter');
  }
}
