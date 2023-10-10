import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('首页'),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
        centerTitle: true,
      ),
      body: const ContainerDemo(),
    );
  }
}

class ContainerDemo extends StatelessWidget {
  const ContainerDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Text(
        'Flutter 为软件开发行业带来了革新：只要一套代码库，即可构建、测试和发布适用于移动、Web、桌面和嵌入式平台的精美应用。',
        style: TextStyle(fontSize: 20),
      ),
      width: 200,
      height: 200,
      // width: double.infinity, // 自适应父组件的宽度，高度类似
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
      decoration: BoxDecoration(
          // border: Border(
          //   top: BorderSide(width: 10, color: Colors.red),
          //   bottom: BorderSide(width: 10, color: Colors.red),
          //   left: BorderSide(width: 10, color: Colors.red),
          //   right: BorderSide(width: 10, color: Colors.red),
          // ),
          border: Border.all(width: 10, color: Colors.brown),
          // borderRadius: BorderRadius.all(Radius.circular(30)),
          borderRadius: const BorderRadius.only(topLeft: Radius.circular(30)),
          color: Colors.lightGreen[100],
          gradient:
              const LinearGradient(colors: [Colors.lightBlue, Colors.white12])),
      alignment: Alignment.center,
      // transform: Matrix4.translationValues(100, 0, 0), // 平移
      // transform: Matrix4.rotationZ(0.1),
      // transform: Matrix4.skewX(0.2),
      // 设置渐变后，背景色失效,
    );
  }
}
