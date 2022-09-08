import 'package:flutter/material.dart';
import 'package:incognito/card_item.dart';
import 'package:incognito/models/user.dart';

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
            setState(() {
              accList.add(Account("User ${accList.length + 1}"));
            });
          }),
    );
  }
}
