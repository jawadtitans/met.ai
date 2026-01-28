import 'package:flutter/material.dart';

void main() {
  List mylist = <List>[];
  print(mylist);
  Map<String, int> name_coutry = {
    "firstname ": 12,
    "lastname": 23,
    "father_name": 123,
  };
  // final result = mylist.map((e)=>$'firstname').toList();

  List names = ['jawad', "hussaain,'Yasin", "Yasini", "Kamali", "Ahmadian"];
  final result2 = names.where((e) => e.toString().contains("e"));
  print(result2);
  Set languages = {"english", "Spaniol", "turkey", 'European'};
  Set Skk = {"flutter.3.38", "Dart10.100"};
  languages.addAll(["java", "asdf"]);

  ///TODO: we have to consider that the addAll parameter has the list values holders in here Q

  final non_resut = languages.intersection(Skk);
  print(non_resut);
  var mapping_key_values = Map<dynamic, dynamic>();
  mapping_key_values['2'] = "asdfasdf";
  mapping_key_values["hussina"] = true;
  final result3 = mapping_key_values.entries.first;
  final last_values = mapping_key_values.entries.last;
  final check_key = mapping_key_values.containsKey("firstname");
  print(
    check_key,
  ); // return the bool value in here becuase it is the bool data type in here.
  final check_values = mapping_key_values.containsValue(true);
  // return true because this value is contian inside the list or map in here to show and it does not matter whether it's key is containe or not.
  // how to put in the list the values?
  // List name_listed = mapping_key_values.values.forEach((e) => "$e");
}
