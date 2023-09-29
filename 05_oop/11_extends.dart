/// Dart类与对象-继承
/// 根据类的先后顺序，可以将类分成父类和子类
/// 子类通过extends关键字继承父类
///   继承后，子类可以使用父类中，可见的内容（属性或方法）
/// 子类中，可以通过@override元数据来标记覆写方法
///   覆写方法：子类中与父类中同名的方法
/// 子类中，可以用过super关键字来引用父类中，可见的内容
///   属性
///   方法（普通构造函数，命名构造函数）

import 'lib/Father.dart';
import 'lib/Son.dart';

void main(List<String> args) {
  Father f = new Father('web');
  print(f.name); // 'xzw'
  Son s = new Son.orgin('fe');
  print(s.name); // 'xzw'
  // print(s._money);   // 子类不能访问父类中的私有内容
  s.say();
}
