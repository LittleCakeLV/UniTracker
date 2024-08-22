import 'package:flutter/material.dart';
import 'pages/admin_base.dart';
import 'pages/student_base.dart';
import 'pages/professor_base.dart';
import 'pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Unitracker',
      theme: ThemeData(
        dividerTheme:
            const DividerThemeData(color: Colors.transparent, thickness: 10),
        colorScheme:
            ColorScheme.fromSeed(seedColor: Colors.deepPurpleAccent.shade100),
        textTheme: TextTheme(
          bodyMedium: const TextStyle(color: Colors.white),
          bodyLarge: TextStyle(color: Colors.grey[750]),
          titleMedium:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          titleLarge: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.normal),
        ),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (_) => const Login(),
        '/student_page': (_) => const StudentPage(title: 'Student'),
        '/admin_page': (_) => const AdminPage(),
        '/professor_page': (_) => const ProfessorPage()
      },
    );
  }
}
