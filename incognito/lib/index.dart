import 'package:flutter/material.dart';
import 'package:incognito/card_item.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({super.key});

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  final userList = [
    "User1",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: userList.length,
            itemBuilder: (context, index) {
              return MyCard();
            }));
  }
}
