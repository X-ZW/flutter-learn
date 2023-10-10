import 'package:flutter/material.dart';
// import '01_basic/01_Hello.dart';
// import '01_basic/02_Text.dart';
// import '02_layout/01_Container.dart';
// import '02_layout/02_Column.dart';
// import '02_layout/03_Flex.dart';
// import '02_layout/04_Wrap.dart';
// import '02_layout/05_Stack.dart';
import '02_layout/06_Card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo', // 在手机资源管理器中的title
        home: const Home(),
        // theme: ThemeData(fontFamily: 'SofiaSans'), // 全局设置
        debugShowCheckedModeBanner: false);
  }
}
