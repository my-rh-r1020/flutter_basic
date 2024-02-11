import 'package:flutter/material.dart';
import 'package:flutter_widget_basic/widget_basic/navigation/navigation_pop..dart';

class NavigationPushWidget extends StatefulWidget {
  const NavigationPushWidget({super.key});

  @override
  State<NavigationPushWidget> createState() => _NavigationPushWidgetState();
}

class _NavigationPushWidgetState extends State<NavigationPushWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue[100],
        title: const Text('Flutter Widget - Navigation Push'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const NavigationPopWidget();
                }));
              },
              child: const Text('Go to Next Page'),
            )
          ],
        ),
      ),
    );
  }
}
