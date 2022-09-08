import 'package:flutter/material.dart';
import 'package:incognito/index.dart';

// Main function to Run App
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: const TextTheme(
              headline1: TextStyle(color: Colors.white),
              headline2: TextStyle(color: Colors.white),
              bodyText2: TextStyle(color: Colors.white),
              subtitle1: TextStyle(color: Colors.white))),
      home: const RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  // Variable declaration
  int userCount = 0;
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 39, 39, 39),
          title: const Text("Incognito — Alt Identities"),
        ),
        body: IndexPage(),
        // bottomNavigationBar: NavigationBar(
        //   destinations: const [
        //     NavigationDestination(icon: Icon(Icons.home), label: "Home"),
        //     NavigationDestination(
        //         icon: Icon(Icons.settings), label: "Settings"),
        //   ],
        //   onDestinationSelected: (int index) {
        //     setState(() {
        //       currentPage = index;
        //     });
        //   },
        //   selectedIndex: currentPage,
        // ),
      ),
    );
  }
}
