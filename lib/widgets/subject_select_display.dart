import 'package:flutter/material.dart';

class SubjectSelectDisplay extends StatelessWidget {
  const SubjectSelectDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(1.0),
      decoration: BoxDecoration(
          border: Border.all(width: 1.2),
          borderRadius: BorderRadius.circular(8),
          color: Theme.of(context).colorScheme.primary),
      child: Row(
        children: [
          Icon(
            Icons.account_box,
            size: 78,
            color: Theme.of(context).colorScheme.onInverseSurface,
          ),
          Column(
            children: [
              Text(
                'Matéria',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                'Professor',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          )
        ],
      ),
    );
  }
}
