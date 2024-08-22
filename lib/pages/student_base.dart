import 'package:flutter/material.dart';
import 'package:unitracker/widgets/subject_select_display.dart';

class StudentPage extends StatefulWidget {
  const StudentPage({super.key, required this.title});

  final String title;

  @override
  State<StudentPage> createState() => _StudentPageState();
}

class _StudentPageState extends State<StudentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Center(
          child: Text(
            widget.title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SubjectSelectDisplay(),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushNamed('/professor_page', arguments: 'Tela Anterior');
                },
                child: const Text('Mudar Tela'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
