import 'package:flutter/material.dart';
import 'package:incognito/card_item.dart';
import 'package:incognito/models/namefake_api.dart';
import 'package:incognito/models/randomuser_api.dart';
import 'package:incognito/models/user.dart';
import 'package:incognito/services/cvv_gen.dart';
import 'package:incognito/services/remote_services.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({super.key});

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  var accList = [];
  final index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 27, 27, 27),
      body: ListView.builder(
          itemCount: accList.length,
          itemBuilder: (context, index) {
            return MyCard(accList[index]);
          }),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.person_add),
          onPressed: () {
            print("Clicked - Adding New User");

            GenerateAccount().then((value) => setState(() {
                  accList.add(value);
                }));
          }),
    );
  }

  Future<Account> GenerateAccount() async {
    Namefake nf = Namefake();
    Randomuser ru = Randomuser();
    nf = await RemoteService().GetNameFake();
    ru = await RemoteService().GetRandomUser();

    // Account Personal Information
    Account tempAcc = Account(nf.name);
    tempAcc.email = ru.results![0].email; // [To-Do]: Add Email
    tempAcc.phone = ru.results![0].phone;
    tempAcc.username = ru.results![0].login!.username;
    tempAcc.password = nf.password;
    tempAcc.height = nf.height.toString();
    tempAcc.weight = nf.weight.toString();

    // Account Location
    tempAcc.country = ru.results![0].location!.country;
    tempAcc.street = ru.results![0].location!.street!.name;
    tempAcc.city = ru.results![0].location!.city;
    tempAcc.state = ru.results![0].location!.state;
    tempAcc.zip = ru.results![0].location!.postcode.toString();

    // Credit Card Information
    tempAcc.cardNumber = nf.plasticcard.toString();
    tempAcc.cardExp = nf.cardexpir;
    tempAcc.cardCvv = CVV().GenerateCVV(3).toString();

    // Notes / Associated Websites
    tempAcc.webpages = [];

    return tempAcc;
  }
}
