import 'Father.dart';

class Son extends Father {
  String name = 'xyj';

  // 通过super继承父类的普通构造函数
  // Son(String job) : super(job);

  // 继承命名构造函数
  // Son(String job) : super.orgin(job);
  Son.orgin(String job) : super.orgin(job);

  @override
  say() {
    print('我是S');
    super.say(); // 调用父类的say方法
    print(super.name); // 调用父类的属性
  }
}
