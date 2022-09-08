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
  int? zip;

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
}
