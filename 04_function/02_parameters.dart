void main(List<String> args) {
  // 必填参数
//   String info(String name) {
//     return name;
//   }

//   String name = info('xx');

// // 可选参数
//   String getUserInfo(String name, [int age = 2]) {
//     return '$name $age';
//   }

//   String x = getUserInfo('x');
//   String x2 = getUserInfo('x', 23);
//   print('name age $x');

  // 命名参数
  // String getUserInfo(String name, {int age = 0}) {
  //   return '$name $age';
  // }

  // String x = getUserInfo('x', age: 20);

  // 函数参数
  var myPrint = (v) {
    print(v);
  };

  List numList = [1, 2, 3];
  numList.forEach(myPrint);
}
