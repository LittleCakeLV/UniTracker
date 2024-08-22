import 'package:unitracker/widgets/drop_down_menu.dart';
import 'package:flutter/material.dart';
import 'package:unitracker/widgets/login_field_widget.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            //height: 50,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                    style: Theme.of(context).textTheme.titleLarge, 'Login'),
              ),
            ),
          ),
          const CustomLoginTextFieldWidget(label: 'Usuário', hide: false),
          const Divider(),
          const CustomLoginTextFieldWidget(label: 'Senha', hide: true),
          const Divider(),
          const DropdownMenuLogin(),
          const Divider(),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed('/student_page');
            },
            child: const Text('Login'),
          ),
        ],
      ),
    );
  }
}
