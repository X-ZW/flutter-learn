void main(List<String> args) {
  // 地板除
  print(10 ~/ 6);

  // 类型判断运算符
  List l1 = [];
  var l2 = [];

  if (l1 is List) {
    print('l1 is List');
  } else {
    print('l1 is not List');
  }

  if (l2 is! List) {
    print('l2 is not List');
  } else {
    print('l2 is List');
  }

  // 避空运算符 ??
  print(1 ?? 3);
  print(null ?? 3);

  var foo;
  foo ??= 3;
  print(foo);

  var foo2 = 3;
  foo2 ??= 4;
  print(foo2);

  // 条件属性运算符（保护可能为空的属性） ?.
  var obj;
  print(obj?.length);

  // 级联运算符
  Set s = new Set();
  // s.add(1);
  // s.add(2);
  // s.add(3);

  s
    ..add(1)
    ..add(2)
    ..add(3)
    ..remove(2);
  print(s);
}
