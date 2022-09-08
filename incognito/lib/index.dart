import 'package:flutter/material.dart';
import 'package:incognito/card_item.dart';
import 'package:incognito/user.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({super.key});

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  var userList = [];

  final index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 27, 27, 27),
      body: ListView.builder(
          itemCount: userList.length,
          itemBuilder: (context, index) {
            return MyCard(userList[index]);
          }),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.person_add),
          onPressed: () {
            print("Clicked - Adding New User");
            setState(() {
              userList.add(User("User ${userList.length + 1}"));
            });
          }),
    );
  }
}
