import 'package:flutter/material.dart';

class CategoryChip extends StatelessWidget {
  final String label;
  final bool selected;

  CategoryChip({
    required this.label,
    required this.selected,
  });

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(label),
      backgroundColor: selected ? Theme.of(context).primaryColor : null,
      labelStyle: TextStyle(
        color: selected ? Colors.white : null,
      ),
    );
  }
}
