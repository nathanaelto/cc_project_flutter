import 'package:flutter/material.dart';

typedef OnSelectedChange = void Function(String item, bool selected);

class ChoiceItem extends StatefulWidget {
  final String itemText;
  final OnSelectedChange? onTap;
  const ChoiceItem({Key? key, required this.itemText, this.onTap})
      : super(key: key);

  @override
  State<ChoiceItem> createState() => _ChoiceItemState();
}

class _ChoiceItemState extends State<ChoiceItem> {
  bool _selected = false;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: widget.onTap == null ? null : _onTap,
      style: TextButton.styleFrom(
        backgroundColor: _selected ? Colors.amber : Colors.grey.shade300,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
      child: Text(
        widget.itemText,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 18,
        ),
      ),
    );
  }

  void _onTap() {
    setState(() {
      _selected = !_selected;
      widget.onTap?.call(widget.itemText, _selected);
    });
  }
}
