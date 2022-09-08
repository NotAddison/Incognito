import 'package:http/http.dart' as http;
import 'package:incognito/models/namefake_api.dart';
import 'package:incognito/models/randomuser_api.dart';

class RemoteService {
  // Http call
  Future<Namefake> GetNameFake() async {
    final response = await http.get(Uri.parse('https://api.namefake.com/'));
    if (response.statusCode == 200) {
      final namefake = namefakeFromJson(response.body);
      return namefake;
    } else {
      throw Exception('Failed to load data');
    }
  }

  Future<Randomuser> GetRandomUser() async {
    final response = await http.get(Uri.parse('https://randomuser.me/api/'));
    if (response.statusCode == 200) {
      final randomuser = randomuserFromJson(response.body);
      return randomuser;
    } else {
      throw Exception('Failed to load data');
    }
  }
}
