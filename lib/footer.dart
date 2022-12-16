import 'package:cc_project/choice_item.dart';
import 'package:flutter/material.dart';

class Footer extends StatefulWidget {
  final List<String> items;
  final OnSelectedChange onSelectedChange;
  const Footer({Key? key, required this.items, required this.onSelectedChange})
      : super(key: key);

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: double.maxFinite,
          width: double.maxFinite,
          color: Colors.white,
          child: Wrap(
            spacing: 10,
            runSpacing: 10,
            children: _buildItems(),
          ),
        ),
      ),
    );
  }

  List<Widget> _buildItems() {
    return widget.items
        .map((item) => ChoiceItem(itemText: item, onTap: onSelectedChange))
        .toList();
  }

  void onSelectedChange(String item, bool selected) {
    widget.onSelectedChange(item, selected);
  }
}
