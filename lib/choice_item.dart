import 'package:flutter/material.dart';

class ChoiceItem extends StatelessWidget {
  final String itemText;
  final bool selected;
  const ChoiceItem({Key? key, required this.itemText, this.selected = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
        color: selected ? Colors.amber : Colors.grey.shade300,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          itemText,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
