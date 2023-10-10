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
      body: StackDemo(),
    );
  }
}

class StackDemo extends StatelessWidget {
  const StackDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: Stack(
        textDirection: TextDirection.rtl, // 声明未定位的子组件的排序方式
        alignment: AlignmentDirectional.centerEnd, // 声明未定位的子组件的对齐方式
        children: [
          const CircleAvatar(
            backgroundImage: NetworkImage(
                'https://img11.360buyimg.com/img/s100x100_jfs/t1/209461/10/18010/61351/62171ff0E9ca61883/6506645b10b6f033.jpg!cc_100x100.avif'),
            radius: 100,
          ),
          Positioned(
            top: 100,
            right: 60,
            child: Container(
              color: Colors.red,
              padding: const EdgeInsets.all(10),
              child: const Text(
                '热卖',
                style: TextStyle(color: Colors.blue, fontSize: 30),
              ),
            ),
          ),
          Text(
            'Hello',
            style: TextStyle(color: Colors.yellowAccent, fontSize: 40),
          )
        ],
      ),
    );
  }
}
