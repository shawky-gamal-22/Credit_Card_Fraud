import 'package:flutter/material.dart';

class RadioClass extends StatelessWidget {
  final Function(bool) onChanged;
  final bool isSelected;

  const RadioClass(
      {super.key, required this.onChanged, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio(
          value: false,
          groupValue: isSelected,
          activeColor: Colors.purple,
          onChanged: (value) {
            onChanged(false);
          },
        ),
        const Text('NO'),
        const SizedBox(width: 20),
        Radio(
          value: true,
          activeColor: Colors.purple,
          groupValue: isSelected,
          onChanged: (value) {
            onChanged(true);
          },
        ),
        const Text('YES'),
      ],
    );
  }
}