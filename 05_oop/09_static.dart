/// static
/// static 关键字用来指定静态成员
///   通过static修饰的人属性是静态属性
///   通过static修饰的方法是静态方法
/// 静态成员可以通过类的名称直接访问（不需要实例化）
///   实例化是比较消耗资源的，声明静态成员，可以提高程序性能
/// 静态方法不能访问非静态的成员，非静态方法可以访问静态成员
///   静态方法不能使用this关键字
///   不能使用this关键字，访问静态属性

class Person {
  String name = 'xzw';
  int age = 18;

  static String staticName = 'xyj';

  void printInfo() {
    print(this.name);

    // 不能通过this关键字访问静态属性
    // print(this.staticName);

    // 非静态方法可以访问静态属性
    print(staticName);

    // 非静态方法可以访问静态方法
    print(staticPrintInfo());
  }

  static staticPrintInfo() {
    print(staticName);

    // 静态方法不能访问非静态属性
    // print(age);
  }
}

void main(List<String> args) {
  // 静态成员，可以通过类名称直接访问
  print(Person.staticName);
  print(Person.staticPrintInfo());

  var p = new Person();
}
