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
      body: const FlexDemo(),
    );
  }
}

class FlexDemo extends StatelessWidget {
  const FlexDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 验证Expanded
        Row(children: [
          Container(
            color: Colors.lightBlue,
            height: 50,
            width: 50,
          ),
          Expanded(
              child: Container(
            color: Colors.lightGreenAccent,
            height: 50,
          ))
        ]),
        const Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          textDirection: TextDirection.rtl, // 声明水平方向的排列方式
          children: [
            Icon(
              Icons.abc,
              size: 50,
            ),
            Icon(
              Icons.zoom_out_rounded,
              size: 50,
            ),
            Icon(
              Icons.access_alarm_rounded,
              size: 50,
            )
          ],
        ),
        Flex(
          direction: Axis.horizontal,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.lightBlue,
                height: 50,
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.lightBlueAccent,
                height: 50,
              ),
            )
          ],
        ),
        Container(
          height: 100,
          margin: const EdgeInsets.all(50),
          child: Flex(
            direction: Axis.vertical,
            verticalDirection: VerticalDirection.up,
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.lightBlue,
                  height: 50,
                ),
              ),
              const Spacer(flex: 1),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.lightBlueAccent,
                  height: 50,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
