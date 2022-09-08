import 'dart:convert';

class Account {
  // Variables - Personal Information
  String? name;
  String? email; // [To-Do] - Add Temp Email API
  String? username;
  String? password;
  String? phone;
  String? height;
  String? weight;

  // Variables - Location
  String? country;
  String? street;
  String? city;
  String? state;
  String? zip;

  // Variables - Credit Card Information
  String? cardNumber;
  String? cardExp;
  String? cardCvv;

  // Associated Webpages
  List<String> webpages = [];

  // User Object Details
  DateTime created = DateTime.now();

  // Parameterized Constructor
  Account(this.name);

  // Object Functions
  String ParseCreatedDate() {
    DateTime date = created;
    return "${date.day}/${date.month}/${date.year}";
  }

  factory Account.fromJson(Map<String, dynamic> jsonData) {
    Account temp = Account(jsonData['name']);
    temp.email = jsonData['email'];
    temp.username = jsonData['username'];
    temp.password = jsonData['password'];
    temp.phone = jsonData['phone'];
    temp.height = jsonData['height'];
    temp.weight = jsonData['weight'];
    temp.country = jsonData['country'];
    temp.street = jsonData['street'];
    temp.city = jsonData['city'];
    temp.state = jsonData['state'];
    temp.zip = jsonData['zip'];
    temp.cardNumber = jsonData['cardNumber'];
    temp.cardExp = jsonData['cardExp'];
    temp.cardCvv = jsonData['cardCvv'];
    temp.webpages = jsonData['webpages'].cast<String>();
    temp.created = DateTime.parse(jsonData['created']);
    return temp;
  }

  static Map<String, dynamic> toMap(Account account) => {
        'name': account.name,
        'email': account.email,
        'username': account.username,
        'password': account.password,
        'phone': account.phone,
        'height': account.height,
        'weight': account.weight,
        'country': account.country,
        'street': account.street,
        'city': account.city,
        'state': account.state,
        'zip': account.zip,
        'cardNumber': account.cardNumber,
        'cardExp': account.cardExp,
        'cardCvv': account.cardCvv,
        'webpages': account.webpages,
        'created': account.created.toIso8601String(),
      };

  static String encode(List<Account> account) => json.encode(
        account
            .map<Map<String, dynamic>>((account) => Account.toMap(account))
            .toList(),
      );

  static List<Account> decode(String account) =>
      (json.decode(account) as List<dynamic>)
          .map<Account>((item) => Account.fromJson(item))
          .toList();
}
