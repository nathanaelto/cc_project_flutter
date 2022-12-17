import 'package:cc_project/choice_item.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  final List<String> items;
  final OnSelectedChange onSelectedChange;
  const Footer({Key? key, required this.items, required this.onSelectedChange})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.maxFinite,
      width: double.maxFinite,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Wrap(
          spacing: 10,
          runSpacing: 10,
          children: _buildItems(),
        ),
      ),
    );
  }

  List<Widget> _buildItems() {
    return items
        .map((item) => ChoiceItem(itemText: item, onTap: onSelectedChange))
        .toList();
  }

}
