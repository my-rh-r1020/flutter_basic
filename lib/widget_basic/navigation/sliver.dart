import 'package:flutter/material.dart';

class SliverWidget extends StatefulWidget {
  const SliverWidget({super.key});

  @override
  State<SliverWidget> createState() => _SliverWidgetState();
}

class _SliverWidgetState extends State<SliverWidget> {
  bool pinned = true, snap = false, floating = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue[100],
        title: const Text('Flutter Widget - Sliver'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: pinned,
            snap: snap,
            floating: floating,
            expandedHeight: 160,
            flexibleSpace: const FlexibleSpaceBar(
              title: Text('Sliver App Bar'),
              background: FlutterLogo(),
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Container(
                color: index.isOdd ? Colors.white : Colors.blue[200],
                height: 100,
                child: Center(
                  child: Text(
                    '$index',
                    textScaleFactor: 5,
                  ),
                ),
              );
            },
            childCount: 20,
          ))
        ],
      ),
    );
  }
}
