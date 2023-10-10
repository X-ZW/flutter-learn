import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Column_Row'),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
        centerTitle: true,
      ),
      body: const ColumnRowDemo(),
    );
  }
}

class ColumnRowDemo extends StatelessWidget {
  const ColumnRowDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlueAccent,
      width: double.infinity,
      child: const Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, // 主轴的对齐方式
          crossAxisAlignment: CrossAxisAlignment.center, // 交叉轴的对其方式
          children: [
            Icon(
              Icons.abc,
              size: 50,
            ),
            Icon(
              Icons.abc_outlined,
              size: 50,
            ),
            Icon(
              Icons.zoom_out_rounded,
              size: 50,
            ),
            Icon(
              Icons.access_alarm_rounded,
              size: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.abc,
                  size: 50,
                ),
                Icon(
                  Icons.abc_outlined,
                  size: 50,
                ),
                Icon(
                  Icons.zoom_out_rounded,
                  size: 50,
                ),
                Icon(
                  Icons.access_alarm_rounded,
                  size: 50,
                ),
              ],
            )
          ]),
    );
  }
}
