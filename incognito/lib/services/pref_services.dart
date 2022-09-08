import 'package:shared_preferences/shared_preferences.dart';
import 'package:incognito/models/user.dart';
import 'dart:convert';

class PrefServices {
  void SaveAccounts(List<Account> list) async {
    final SharedPreferences sharedpref = await SharedPreferences.getInstance();
    var str = jsonEncode(list);
    sharedpref.setString("Accounts", str);
  }

  Future<List<Account>> LoadAccounts() async {
    final SharedPreferences sharedpref = await SharedPreferences.getInstance();
    var str = sharedpref.getString("Accounts");
    if (str == null) {
      return [];
    }
    var list = jsonDecode(str) as List;
    return list.map((item) => Account.fromJson(item)).toList();
  }
}
