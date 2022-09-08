import 'package:flutter/material.dart';
import 'package:incognito/main.dart';
import 'package:incognito/user.dart';
import 'package:incognito/details.dart';

class MyCard extends StatelessWidget {
  final Account account;
  MyCard(this.account);
  var index = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
      padding: EdgeInsets.all(10),
      child: Card(
        color: const Color.fromARGB(255, 41, 41, 41),
        margin: const EdgeInsets.all(5),
        child: ListTile(
          title: Text("${account.name}",
              style: const TextStyle(color: Colors.white)),
          subtitle: Text(
              "${account.name} | ${account.password} | ${account.ParseCreatedDate()}",
              style: const TextStyle(color: Colors.white)),
          leading: const Icon(Icons.person, color: Colors.white, size: 50),
          trailing: const Icon(Icons.arrow_forward_ios, color: Colors.white),
          contentPadding: const EdgeInsets.all(10),
          onTap: () {
            print("${account.name} Clicked");
            Navigator.of(context, rootNavigator: true).push(
                MaterialPageRoute(builder: (context) => Details(account)));
          },
        ),
      ),
    ));
  }
}
