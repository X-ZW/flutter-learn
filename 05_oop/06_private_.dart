/// Dart与TS不同，没有访问修饰符（public，protected，private）
/// Dart类中，默认的访问修饰符是公开的（即public）
/// 如果属性或方法以_（下划线）开头，则表示私有（即private）
/// 只有把类单独抽离出去，私有属性和方法才起作用
import 'lib/Person.dart';

void main(List<String> args) {
  Person p = new Person('xzw');
  print(p.name);

  // 访问私有属性
  // print(p._money);

  print(p.getMoney());

  // 访问私有方法
  // print(p._printAge());
}
