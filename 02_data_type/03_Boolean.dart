void main(List<String> args) {
  bool flag1 = true;
  var flag2;

  // 显式的进行判断
  if (flag2 == null) {
    print(1);
  }

  var n1 = 0 / 0;
  print(n1); // NaN

  print(n1.isNaN);

  var n2 = [];

  print(n2 is List);
  
}
