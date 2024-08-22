import 'package:flutter/material.dart';

class AdminPage extends StatelessWidget {
  const AdminPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            //height: 50,
            child: const Center(
              child: Text(
                'Lista de Afazeres',
                //style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
          )
        ],
      ),
    );
  }
}
