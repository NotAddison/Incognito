import 'package:flutter/material.dart';
import 'package:incognito/main.dart';
import 'package:incognito/user.dart';

class MyCard extends StatelessWidget {
  final User user;
  MyCard(this.user);
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
          title:
              Text("${user.name}", style: const TextStyle(color: Colors.white)),
          subtitle: Text(
              "${user.username} | ${user.password} | ${FormatDate(user.created)}",
              style: const TextStyle(color: Colors.white)),
          leading: const Icon(Icons.person, color: Colors.white, size: 50),
          trailing: const Icon(Icons.arrow_forward_ios, color: Colors.white),
          contentPadding: const EdgeInsets.all(10),
          onTap: () {
            print("${user.name} Clicked");
          },
        ),
      ),
    ));
  }

  String FormatDate(DateTime date) {
    return "${date.day}/${date.month}/${date.year}";
  }
}
