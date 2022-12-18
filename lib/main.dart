import 'package:cc_project/footer.dart';
import 'package:cc_project/header.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> items = [
    "Cinéma",
    "Pétanque",
    "Fitness",
    "League Of Legend",
    "Basket",
    "Shopping",
    "Programmation"
  ];
  List<String> selectedItems = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Header(
                selected: selectedItems,
              ),
            ),
            Expanded(
              child: Footer(
                items: items,
                onSelectedListChange: _onSelectedListChange,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onSelectedListChange(List<String> selectedItems) {
    setState(() {
      this.selectedItems = selectedItems;
    });
  }

}
