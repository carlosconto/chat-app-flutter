import 'package:flutter/material.dart';

class HerBubbleChat extends StatelessWidget {
  const HerBubbleChat({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: color.secondary,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: Text('Hola mundo women'),
          ),
        ),
        const SizedBox(height: 5.0),
        _ImageBubble(),
        const SizedBox(height: 5.0),
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Image.network('https://i.pravatar.cc/3400',
            fit: BoxFit.cover,
            width: size.width * 0.7,
            height: 150.0, loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;

          return Container(
            width: size.width * 0.7,
            height: 150.0,
            child: const Text('Cargando imagen...'),
          );
        }));
  }
}
