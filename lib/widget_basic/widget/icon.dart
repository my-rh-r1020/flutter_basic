import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue[100],
        title: const Text('Flutter Widget - Icon'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: const Column(
          children: [
            Icon(
              Icons.share,
              size: 28,
            ),
            Icon(
              Icons.favorite,
              size: 28,
              color: Colors.pink,
            )
          ],
        ),
      ),
    );
  }
}
