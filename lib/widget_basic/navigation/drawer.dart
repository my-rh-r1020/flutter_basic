import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Widget - Drawer'),
        backgroundColor: Colors.blue[100],
        centerTitle: true,
      ),
      endDrawer: Drawer(
        child: Container(
          color: Colors.white,
          child: ListView(
            padding: const EdgeInsets.all(0),
            children: [
              Container(
                color: Colors.blue[100],
                child: UserAccountsDrawerHeader(
                  currentAccountPicture: const CircleAvatar(
                    child: FlutterLogo(
                      size: 50,
                    ),
                  ),
                  decoration: BoxDecoration(color: Colors.grey[200]),
                  accountName: const Text(
                    'Rifaldi',
                    style: TextStyle(color: Colors.black),
                  ),
                  accountEmail: const Text(
                    'example@gmail.com',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              ListTile(
                title: const Text('Menu 1'),
                onTap: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: const Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
