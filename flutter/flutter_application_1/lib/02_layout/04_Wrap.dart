import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flex'),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
        centerTitle: true,
      ),
      body: WrapDome(),
    );
  }
}

class WrapDome extends StatelessWidget {
  final List<String> _list = [
    'XZW',
    'XZW',
  ];

  List<Widget> _JS() {
    return _list
        .map((e) => Chip(
              label: Text(e),
              avatar: const CircleAvatar(
                backgroundColor: Colors.redAccent,
                child: Text('苏'),
              ),
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Wrap(
            spacing: 80, // 水平方向的间距
            runSpacing: 100, // 垂直方向的间距
            children: _JS()),
        const Wrap(
          children: [
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.blueAccent,
                child: Text('浙'),
              ),
              label: Text('XYJ'),
            ),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.blueAccent,
                child: Text('浙'),
              ),
              label: Text('XYJ'),
            ),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.blueAccent,
                child: Text('浙'),
              ),
              label: Text('XYJ'),
            ),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.blueAccent,
                child: Text('浙'),
              ),
              label: Text('XYJ'),
            ),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.blueAccent,
                child: Text('浙'),
              ),
              label: Text('XYJ'),
            ),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.blueAccent,
                child: Text('浙'),
              ),
              label: Text('XYJ'),
            ),
          ],
        )
      ],
    );
  }
}
