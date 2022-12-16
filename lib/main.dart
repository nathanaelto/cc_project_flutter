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
  List<bool> selected = [false, false, false, false, false, false, false];
  List<String> selectedItems = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Header(
              selected: selectedItems,
            ),
            Footer(
              items: items,
              onSelectedChange: _onItemChange,
            ),
          ],
        ),
      ),
    );
  }

  void _onItemChange(String item, bool isSelected) {
    setState(() {
      if (isSelected) {
        selectedItems.add(item);
      } else {
        selectedItems.remove(item);
      }
    });
  }

}
