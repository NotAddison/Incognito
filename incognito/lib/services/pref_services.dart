import 'package:shared_preferences/shared_preferences.dart';
import 'package:incognito/models/user.dart';
import 'dart:convert';

class PrefServices {
  void SaveAccounts(List<Account> list) async {
    print("Loading Shared Preferences...");
    final SharedPreferences sharedpref = await SharedPreferences.getInstance();
    var encoded_str = Account.encode(list);
    sharedpref.setString("accounts", encoded_str);
  }

  Future<List<Account>> LoadAccounts() async {
    // Fetch and decode data
    final SharedPreferences sharedpref = await SharedPreferences.getInstance();
    final String data = await sharedpref.getString("accounts") ?? "";
    return Account.decode(data);
  }
}
