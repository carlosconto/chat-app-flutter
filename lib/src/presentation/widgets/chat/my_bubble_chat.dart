import 'package:flutter/material.dart';

class MyBubbleMessage extends StatelessWidget {
  const MyBubbleMessage({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
            color: color.primary,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: Text('Hola mundo'),
          ),
        ),
        const SizedBox(height: 10.0),
      ],
    );
  }
}
