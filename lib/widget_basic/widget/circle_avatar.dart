import 'package:flutter/material.dart';

class CircleAvatarWidget extends StatelessWidget {
  CircleAvatarWidget({Key? key}) : super(key: key);

  final List<Color> colors = [
    Colors.blue,
    Colors.red,
    Colors.greenAccent,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue[100],
        title: const Text('Flutter Widget - Circle Avatar'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1498050108023-c5249f4df085?q=80&w=1472&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
            ),
            const SizedBox(
              height: 32,
            ),
            Row(
              children: [
                ...List.generate(
                  colors.length,
                  (index) => CircleAvatar(
                    radius: 40,
                    backgroundColor: colors[index],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
