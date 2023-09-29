class Person {
  late String name;

  static Person? instance = null; //要加？ 不然会报错

  //工厂构造函数,工厂构造函数不能被实例化
  factory Person([String name = 'x']) {
    // 工厂构造函数不能使用this
    if (Person.instance == null) {
      // 第一次实例化
      Person.instance = new Person.newSelf(name);
    }
    return Person.instance!;
  }

  // 命名构造函数
  Person.newSelf(this.name) {
    print(3);
  }
}

void main(List<String> args) {
  Person p1 = new Person('xzw');
  print(p1.name);
  print(Person.instance);

  Person p2 = new Person('xyj');
  print(p2.name); // 任然打印xzw

  print(p1 == p2);
}
