import 'package:cc_project/choice_item.dart';
import 'package:flutter/material.dart';

typedef OnSelectedListChange = void Function(List<String> selectedItems);

class Footer extends StatefulWidget {
  final List<String> items;
  final OnSelectedListChange onSelectedListChange;
  const Footer({Key? key, required this.items, required this.onSelectedListChange})
      : super(key: key);

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  final List<String> selectedItems = [];

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
    return widget.items
        .map(
          (item) => GestureDetector(
            onTap: () => _onTap(item),
            child: ChoiceItem(
              itemText: item,
              selected: _isSelected(item),
            ),
          ),
        )
        .toList();
  }

  bool _isSelected(String item) {
    return selectedItems.contains(item);
  }

  void _onTap(String item) {
    setState(() {
      if (_isSelected(item)) {
        selectedItems.remove(item);
      } else {
        selectedItems.add(item);
      }
    });
    widget.onSelectedListChange(selectedItems);
  }
}
