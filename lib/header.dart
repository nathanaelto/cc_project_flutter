import 'package:flutter/material.dart';
import 'choice_item.dart';

class Header extends StatelessWidget {
  final List<String> selected;

  const Header({Key? key, required this.selected}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      color: Colors.deepPurpleAccent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "Vos choix :",
              style: TextStyle(
                color: Colors.white,
                fontSize: 45,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Wrap(
              spacing: 10,
              runSpacing: 10,
              children: _buildItems(),
            ),
          )
        ],
      ),
    );
  }

  List<Widget> _buildItems() {
    if (selected.isEmpty) {
      return [
        const Text(
          "Cliquez sur les boutons ci-dessous !",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        )
      ];
    }
    return selected
        .map((item) => ChoiceItem(
              itemText: item,
            ))
        .toList();
  }
}
