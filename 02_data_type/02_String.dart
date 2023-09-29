void main(List<String> args) {
  var str = 'xzw';
  var str2 = "xxx";

  String str3 = 'zzz';
  print(str3);

  String str4 = '''x
  z
  w''';

  String str5 = """
  x
  x
  x
  """;

  print(str + str2);
  print('$str $str4 $str5');

  // 字符串的分隔
  str.split('');

  // 字符串的裁切
  print(str4.trim()); // str.trimLeft / trimRight

  // 判断字符串是否为空
  print((''.isEmpty));

  print(''.isNotEmpty);

  // 字符串替换
  str.replaceAll('zw', 'yj');
  // 支持正则替换
  '1a2b'.replaceAll(RegExp(r'\d+'), "_");

// 通过正则匹配
  RegExp isPhone = RegExp(r'^1\d{10}$');
  print(isPhone.hasMatch('15858175026'));

  // 查找字符串
  print(str.contains('zw'));

  // 定位字符串
  str.indexOf('x');
}
