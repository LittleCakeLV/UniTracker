import 'package:flutter/material.dart';

class CustomLoginTextFieldWidget extends StatelessWidget {
  final String label;
  final bool hide;
  const CustomLoginTextFieldWidget(
      {super.key, required this.label, required this.hide});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: TextField(
        style: Theme.of(context).textTheme.titleLarge,
        obscureText: hide,
        decoration: InputDecoration(
          filled: true,
          fillColor: Theme.of(context).colorScheme.primaryContainer,
          border: const UnderlineInputBorder(),
          labelText: label,
        ),
      ),
    );
  }
}
