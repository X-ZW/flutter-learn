void main(List<String> args) {
  List numAndstrList = [1, 2, 1, 'x', 'x'];
  print([...numAndstrList.toSet()]);

  Set name = {'x', 'z', 'w'};

  var nick = new Set();

  nick.addAll(['x', 'y', 'j']);

  print('name: $name, nick: $nick');

  // 求交集
  print(name.intersection(nick));

  // 求并集
  print(name.union(nick));

  // 求差集
  print(name.difference(nick));

  // 第一个和最后一个元素
  print(name.first);
  print(name.last);
}
