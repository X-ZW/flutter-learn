import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('层叠布局'),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
        centerTitle: true,
      ),
      body: CardDemo(),
    );
  }
}

class CardDemo extends StatelessWidget {
  const CardDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          margin: const EdgeInsets.all(30),
          color: Colors.yellowAccent,
          shadowColor: Colors.blueGrey,
          elevation: 10,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
              side: BorderSide(color: Colors.pinkAccent, width: 3)),
          child: const Column(
            children: [
              ListTile(
                leading: Icon(
                  Icons.supervised_user_circle_rounded,
                  size: 50,
                ),
                title: Text(
                  'XZW',
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text(
                  '切图仔',
                  style: TextStyle(fontSize: 10),
                ),
              ),
              Divider(),
              ListTile(
                title: Text(
                  'em:12@3',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              ListTile(
                title: Text(
                  'address:12@3',
                  style: TextStyle(fontSize: 20),
                ),
              )
            ],
          ),
        ),
        Card(
          child: Column(
            children: [
              ListTile(
                leading: Icon(
                  Icons.supervised_user_circle_rounded,
                  size: 50,
                ),
                title: Text(
                  'XYJ',
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text(
                  '切图仔',
                  style: TextStyle(fontSize: 10),
                ),
              ),
              Divider(),
              ListTile(
                title: Text(
                  'em:12@3',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              ListTile(
                title: Text(
                  'address:12@3',
                  style: TextStyle(fontSize: 20),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
