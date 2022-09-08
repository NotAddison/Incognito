import 'package:flutter/material.dart';
import 'package:incognito/main.dart';
import 'package:incognito/models/user.dart';

class Details extends StatelessWidget {
  Account account;
  Details(this.account);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 27, 27, 27),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 39, 39, 39),
          title: Text("${account.name}"),
        ),
        body: SingleChildScrollView(
          child: Container(
              width: double.infinity,
              alignment: Alignment.center,
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Card(
                    color: const Color.fromARGB(255, 41, 41, 41),
                    margin: const EdgeInsets.all(15),
                    child: ListTile(
                      title: Text("${account.name}",
                          style: const TextStyle(color: Colors.white)),
                      subtitle: Text(account.ParseCreatedDate(),
                          style: const TextStyle(color: Colors.white)),
                      leading: const Icon(Icons.person,
                          color: Colors.white, size: 50),
                      contentPadding: const EdgeInsets.all(10),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: const Text("— Details —",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20))),
                  // ------------------------------------
                  // Variables - Personal Information
                  Card(
                    color: const Color.fromARGB(255, 20, 20, 20),
                    child: Container(
                        width: double.infinity,
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            children: [
                              Container(
                                  alignment: Alignment.centerLeft,
                                  margin: const EdgeInsets.only(bottom: 5),
                                  padding: const EdgeInsets.only(bottom: 7),
                                  decoration: const BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Color.fromARGB(
                                                  255, 46, 46, 46),
                                              width: 2.0))),
                                  child: Row(
                                    children: [
                                      Container(
                                          margin:
                                              const EdgeInsets.only(right: 5),
                                          child: const Icon(
                                            Icons.person_outline,
                                            color: Colors.white,
                                          )),
                                      const Text("Personal Information:",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18)),
                                    ],
                                  )),
                              Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(right: 15),
                                    child: const Text("Name:",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  Flexible(
                                      child: TextFormField(
                                    decoration: const InputDecoration(
                                        isDense: true,
                                        border: InputBorder.none),
                                    initialValue: "${account.name}",
                                  )),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(right: 15),
                                    child: const Text("Email:",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  Flexible(
                                      child: TextFormField(
                                    decoration: const InputDecoration(
                                        isDense: true,
                                        border: InputBorder.none),
                                    initialValue: "${account.email}",
                                  )),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(right: 15),
                                    child: const Text("Phone Number:",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  Flexible(
                                      child: TextFormField(
                                    decoration: const InputDecoration(
                                        isDense: true,
                                        border: InputBorder.none),
                                    initialValue: "${account.phone}",
                                  )),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(right: 15),
                                    child: const Text("Username:",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  Flexible(
                                      child: TextFormField(
                                    decoration: const InputDecoration(
                                        isDense: true,
                                        border: InputBorder.none),
                                    initialValue: "${account.username}",
                                  )),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(right: 15),
                                    child: const Text("Password:",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  Flexible(
                                      child: TextFormField(
                                    decoration: const InputDecoration(
                                        isDense: true,
                                        border: InputBorder.none),
                                    initialValue: "${account.password}",
                                  )),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(right: 15),
                                    child: const Text("Height:",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  Flexible(
                                      child: TextFormField(
                                    decoration: const InputDecoration(
                                        isDense: true,
                                        border: InputBorder.none),
                                    initialValue: "${account.height}",
                                  )),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(right: 15),
                                    child: const Text("Weight:",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  Flexible(
                                      child: TextFormField(
                                    decoration: const InputDecoration(
                                        isDense: true,
                                        border: InputBorder.none),
                                    initialValue: "${account.weight}",
                                  )),
                                ],
                              ),
                            ],
                          ),
                        )),
                  ),
                  // Variables - Location
                  Card(
                    color: const Color.fromARGB(255, 20, 20, 20),
                    child: Container(
                        width: double.infinity,
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            children: [
                              Container(
                                  alignment: Alignment.centerLeft,
                                  margin: const EdgeInsets.only(bottom: 5),
                                  padding: const EdgeInsets.only(bottom: 7),
                                  decoration: const BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Color.fromARGB(
                                                  255, 46, 46, 46),
                                              width: 2.0))),
                                  child: Row(
                                    children: [
                                      Container(
                                          margin:
                                              const EdgeInsets.only(right: 5),
                                          child: const Icon(
                                            Icons.pin_drop_outlined,
                                            color: Colors.white,
                                          )),
                                      const Text("Location:",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18)),
                                    ],
                                  )),
                              Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(right: 15),
                                    child: const Text("Country:",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  Flexible(
                                      child: TextFormField(
                                    decoration: const InputDecoration(
                                        isDense: true,
                                        border: InputBorder.none),
                                    initialValue: "${account.country}",
                                  )),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(right: 15),
                                    child: const Text("Street:",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  Flexible(
                                      child: TextFormField(
                                    decoration: const InputDecoration(
                                        isDense: true,
                                        border: InputBorder.none),
                                    initialValue: "${account.street}",
                                  )),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(right: 15),
                                    child: const Text("City:",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  Flexible(
                                      child: TextFormField(
                                    decoration: const InputDecoration(
                                        isDense: true,
                                        border: InputBorder.none),
                                    initialValue: "${account.city}",
                                  )),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(right: 15),
                                    child: const Text("State:",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  Flexible(
                                      child: TextFormField(
                                    decoration: const InputDecoration(
                                        isDense: true,
                                        border: InputBorder.none),
                                    initialValue: "${account.state}",
                                  )),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(right: 15),
                                    child: const Text("Zip:",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  Flexible(
                                      child: TextFormField(
                                    decoration: const InputDecoration(
                                        isDense: true,
                                        border: InputBorder.none),
                                    initialValue: "${account.zip}",
                                  )),
                                ],
                              ),
                            ],
                          ),
                        )),
                  ),
                  // Variables - Credit Card Information
                  Card(
                    color: const Color.fromARGB(255, 20, 20, 20),
                    child: Container(
                        width: double.infinity,
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            children: [
                              Container(
                                  alignment: Alignment.centerLeft,
                                  margin: const EdgeInsets.only(bottom: 5),
                                  padding: const EdgeInsets.only(bottom: 7),
                                  decoration: const BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Color.fromARGB(
                                                  255, 46, 46, 46),
                                              width: 2.0))),
                                  child: Row(
                                    children: [
                                      Container(
                                          margin:
                                              const EdgeInsets.only(right: 5),
                                          child: const Icon(
                                            Icons.person,
                                            color: Colors.white,
                                          )),
                                      const Text("Credit Card Information:",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18)),
                                    ],
                                  )),
                              Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(right: 15),
                                    child: const Text("Card Number:",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  Flexible(
                                      child: TextFormField(
                                    decoration: const InputDecoration(
                                        isDense: true,
                                        border: InputBorder.none),
                                    initialValue: "${account.cardNumber}",
                                  )),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(right: 15),
                                    child: const Text("Card Expiry:",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  Flexible(
                                      child: TextFormField(
                                    decoration: const InputDecoration(
                                        isDense: true,
                                        border: InputBorder.none),
                                    initialValue: "${account.cardExp}",
                                  )),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(right: 15),
                                    child: const Text("Card CVV:",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  Flexible(
                                      child: TextFormField(
                                    decoration: const InputDecoration(
                                        isDense: true,
                                        border: InputBorder.none),
                                    initialValue: "${account.cardCvv}",
                                  )),
                                ],
                              ),
                            ],
                          ),
                        )),
                  ),
                  // Variables - Associated Webpages
                  Card(
                    color: const Color.fromARGB(255, 20, 20, 20),
                    child: Container(
                        width: double.infinity,
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            children: [
                              Container(
                                  alignment: Alignment.centerLeft,
                                  margin: const EdgeInsets.only(bottom: 5),
                                  padding: const EdgeInsets.only(bottom: 7),
                                  decoration: const BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Color.fromARGB(
                                                  255, 46, 46, 46),
                                              width: 2.0))),
                                  child: Row(
                                    children: [
                                      Container(
                                          margin:
                                              const EdgeInsets.only(right: 5),
                                          child: const Icon(
                                            Icons.web_asset_outlined,
                                            color: Colors.white,
                                          )),
                                      const Text("Notes:",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18)),
                                    ],
                                  )),
                              Row(
                                children: [
                                  // Container(
                                  //   margin: const EdgeInsets.only(right: 15),
                                  //   child: const Text("Name:",
                                  //       style: TextStyle(
                                  //           fontWeight: FontWeight.bold)),
                                  // ),
                                  Flexible(
                                      child: TextFormField(
                                    decoration: const InputDecoration(
                                        isDense: true,
                                        border: InputBorder.none),
                                    initialValue: "",
                                  )),
                                ],
                              ),
                            ],
                          ),
                        )),
                  ),
                  // Buttons
                  Container(
                      margin: const EdgeInsets.only(top: 10),
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary:
                                    const Color.fromARGB(255, 206, 63, 44)),
                            child: Row(children: const [
                              Icon(Icons.delete),
                              Text(" Delete")
                            ]),
                            onPressed: () {
                              print("Delete Account - ${account.name}");
                            },
                          ),
                          Spacer(),
                          ElevatedButton(
                            child: Row(children: const [
                              Icon(Icons.save),
                              Text(" Update")
                            ]),
                            onPressed: () {
                              print("Update Account - ${account.name}");
                            },
                          )
                        ],
                      )),
                ],
              )),
        ));
  }
}
