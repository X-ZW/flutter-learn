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
      body: const TextDemo(),
    );
  }
}

class TextDemo extends StatelessWidget {
  const TextDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Text(
        '⼀个 promise 必须提供⼀个 then ⽅法以访问其当前值和原因。promise 的 then ⽅法接受两个参数：promise.then(onFulfilled, onRejected)他们都是可选参数，同时他们都是函数，如果onFulfilled 或 onRejected 不是函数，则需要忽略他们。',
        textDirection: TextDirection.ltr,
        style: TextStyle(
            fontSize: 30,
            color: Colors.blueAccent,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.italic,
            decoration: TextDecoration.lineThrough,
            decorationColor: Colors.red,
            fontFamily: 'SofiaSans'),
        textAlign: TextAlign.left,
        maxLines: 3,
        overflow: TextOverflow.ellipsis,
        textScaleFactor: 0.5,
      ),
      RichText(
        text: const TextSpan(
            text: 'Hello', // 添加要显示的文本
            style: TextStyle(fontSize: 40, color: Colors.lightBlue),
            children: [
              TextSpan(text: 'XZW', style: TextStyle(color: Colors.red))
            ]),
      ),
    ]);
  }
}
