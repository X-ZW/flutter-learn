void main(List<String> args) {
  List l1 = [1, 2, 3, 4];

  // 限定元素类型
  List l2 = <int>[1, 2, 3];

  // 通过构造函数的声明方式
  var l3 = new List.empty(growable: true);
  l3.add(2);

  var l4 = new List.filled(3, 3);
  print(l4);

  // 拓展操作符
  var l5 = [...l4, 5];

  var l6;
  var l7 = [7, ...?l6];

  // 返回列表的长度
  print(l7.length);

  // 列表的反转
  print(l1.reversed.toList());

  // 添加元素
  l3.addAll([3, 4, 'x']);
  print((l3));

  // 删除元素
  l3.remove('x');
  print(l3);

  // 按下标删除元素
  l3.removeAt(0);
  print(l3);

  // 在指定位置添加元素
  l3.insert(0, 'new num 2');
  print(l3);

  // 清空
  l3.clear();

  // 合并元素
  List words = ['1', '2'];
  words.join('-');

  l1.forEach((element) {
    // print(element);
  });

  var nl1 = l1.map((e) => e + 1);

  print(nl1.toList());

  var nl2 = nl1.where((element) => element >= 3);
  print(nl2.toList());

  bool isAllNumGreaterThan3 = nl2.every((element) => element > 3);
  bool isGreaterThan3 = nl2.any((element) => element > 3);

  print('isAllNumGreaterThan3 $isAllNumGreaterThan3, isGreaterThan3 $isGreaterThan3');
}
