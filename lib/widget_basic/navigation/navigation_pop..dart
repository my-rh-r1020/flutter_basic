import 'package:flutter/material.dart';

class NavigationPopWidget extends StatefulWidget {
  const NavigationPopWidget({super.key});

  @override
  State<NavigationPopWidget> createState() => _NavigationPopWidgetState();
}

class _NavigationPopWidgetState extends State<NavigationPopWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Widget - Navigation Pop'),
        backgroundColor: Colors.blue[100],
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Go back (pop)'),
            ),
          ],
        ),
      ),
    );
  }
}
