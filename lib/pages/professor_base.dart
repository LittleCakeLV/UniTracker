import 'package:flutter/material.dart';

class ProfessorPage extends StatelessWidget {
  const ProfessorPage({super.key});

  @override
  Widget build(BuildContext context) {
    //String args = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Voltar'),
        ),
      ),
    );
  }
}
