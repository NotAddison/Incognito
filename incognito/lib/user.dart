class User {
  // Variables - Personal Information
  String? name;
  String? email; // [To-Do] - Add Temp Email API
  String? username;
  String? password;
  String? phone;
  String? address;
  String? city;
  String? state;
  String? zip;
  String? country;

  // Variables - Credit Card Information
  String? cardNumber;
  String? cardName;
  String? cardExp;
  String? cardCvv;
  String? cardType;
  String? cardPin;

  // Associated Webpages
  List<String> webpages = [];

  // User Object Details
  DateTime created = DateTime.now();

  // Parameterized Constructor
  User(this.name);
}
