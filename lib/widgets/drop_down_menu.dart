import 'package:flutter/material.dart';

const List<String> loginPrivilege = <String>[
  'Administrador',
  'Aluno',
  'Professor'
];

class DropdownMenuLogin extends StatefulWidget {
  const DropdownMenuLogin({super.key});

  @override
  State<DropdownMenuLogin> createState() => _DropdownMenuLoginState();
}

class _DropdownMenuLoginState extends State<DropdownMenuLogin> {
  String dropDownValue = loginPrivilege.first;
  @override
  Widget build(BuildContext context) {
    return DropdownMenu<String>(
      initialSelection: loginPrivilege.first,
      onSelected: (String? value) {
        setState(() {
          dropDownValue = value!;
        });
      },
      dropdownMenuEntries:
          loginPrivilege.map<DropdownMenuEntry<String>>((String value) {
        return DropdownMenuEntry<String>(value: value, label: value);
      }).toList(),
    );
  }

  String getSelected() {
    return dropDownValue;
  }
}
