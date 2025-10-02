import 'package:flutter/material.dart';

class HerMessageBubble extends StatelessWidget {
  const HerMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.secondary,
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Soy ella', style: TextStyle(color: Colors.white)),
          ),
        ),
        const SizedBox(height: 30),

        // Todo:img
        _ImageBuble(),

        const SizedBox(height: 10),
      ],
    );
  }
}

class _ImageBuble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        'https://yesno.wtf/assets/yes/10-271c872c91cd72c1e38e72d2f8eda676.gif',
        width: 150,
        height: 150,
        fit: BoxFit.cover,
        // laoder de carga
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return Container(
            width: 150,
            height: 150,
            padding: const EdgeInsets.all(10),
            child: const CircularProgressIndicator(strokeWidth: 2),
          );
        },
      ),
    );
  }
}
