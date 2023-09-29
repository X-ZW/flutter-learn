void main(List<String> args) {
  var str = '😀';
  print(str.length);
  print(str.runes.length);

  // Runes 可以将 UTF-32 字符集表示的内容转为符号
  Runes str2 = new Runes('\u{1f680}');
  print(new String.fromCharCodes(str2));

  // Symbol
  var a = #ab;
  var b = new Symbol('ab');
  print(a == b);

}