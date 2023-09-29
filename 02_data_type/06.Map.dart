void main(List<String> args) {
  // 字面量
  var p = {'name': 'x'};

  // 构造函数
  var p2 = new Map();
  p2['name'] = 'z';

  // 访问属性
  print(p['name']);

  // 判断map中的key是否存在
  print(p.containsKey('name'));
  print(p.containsKey('key'));

  // 赋值
  // 如果key 不存在，才进行赋值，如果key已经存在，不进行赋值
  p.putIfAbsent('age', () => '12');
  p.putIfAbsent('age', () => '1');
  print(p);

  // 获取Map中所有的key
  print(p.keys);
  // 获取Map中所有的value
  print(p.values);

  // 根据条件进行删除
  p.removeWhere((key, value) => key == 'age');
  print(p);
}
