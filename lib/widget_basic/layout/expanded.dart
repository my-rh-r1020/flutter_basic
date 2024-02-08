import 'package:flutter/material.dart';

class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Widget - Expanded'),
        backgroundColor: Colors.blue[100],
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: const Column(
          children: [
            Row(
              children: [
                Icon(Icons.arrow_back_ios),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      'List Checklist',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
                Icon(
                  Icons.check,
                  color: Colors.blueAccent,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
