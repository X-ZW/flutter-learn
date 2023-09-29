class Person {
  late String name;

  // 声明私有属性
  num _money = 100;

  Person(this.name);

  num getMoney() => this._money;

  // 声明私有方法
  void _printAge() => print('23');
}
