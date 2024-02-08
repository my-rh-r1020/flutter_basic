import 'package:flutter/material.dart';

class WrapWidget extends StatelessWidget {
  WrapWidget({Key? key}) : super(key: key);

  final List<Color> colors = [
    Colors.blue,
    Colors.red,
    Colors.amber,
    Colors.black,
    Colors.green,
    Colors.grey,
    Colors.purple,
    Colors.pink,
    Colors.yellow,
    Colors.cyan,
    Colors.teal
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Widget - Wrap'),
        backgroundColor: Colors.blue[100],
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Wrap(
              spacing: 20,
              runSpacing: 10,
              children: colors.map(
                (color) {
                  return InkWell(
                    onTap: () {},
                    child: Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        border: Border.all(width: 3, color: Colors.blueGrey),
                        color: color,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            offset: Offset.zero,
                            blurRadius: 15,
                          )
                        ],
                      ),
                    ),
                  );
                },
              ).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
