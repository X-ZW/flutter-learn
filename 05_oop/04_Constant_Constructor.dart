class Point {
  num x;
  num y;
  Point(this.x, this.y);
}

class ImmutablePointer {
  // 属性必须通过 final 声明
  final num x;
  final num y;

  // 常量构造函数必须通过 const 声明
  const ImmutablePointer(this.x, this.y);

  // 常量构造函数不能有函数体
  // const ImmutablePointer(this.x, this.y){}  // 这样会报错
}

void main(List<String> args) {
  var p1 = new Point(1, 2);
  var p2 = new Point(1, 2);
  print(p1 == p2);

  // 常量钩爪函数可以当作普通构造函数使用
  var p3 = new ImmutablePointer(1, 2);
  var p4 = new ImmutablePointer(1, 2);
  print(p3 == p4); // false

  // 声明不可变对象，必须通过const 关键字
  var p5 = const ImmutablePointer(1, 1);
  var p6 = const ImmutablePointer(1, 1);
  print(p5 == p6);
}
