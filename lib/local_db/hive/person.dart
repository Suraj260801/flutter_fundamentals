import 'package:hive/hive.dart';

class PersonDb {
  String? name;

  List<String>? persons;
  final _box = Hive.box('person');

  void initData() {
    persons = [];
  }

  void loadData() {
    persons = _box.get('PEOPLES');
  }

  void updateData() {
    _box.put('PEOPLES', persons!);
  }
}
