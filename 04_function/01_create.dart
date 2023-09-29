// Dart中声明函数不需要function关键字
void printStr() {
  print('111');
}

int getNum() {
  return 1;
}

void main(List<String> args) {
  printStr();
  int num = getNum();

// 匿名函数
  var myPrint = (v) {
    print(v);
  };

  List numList = [1, 2, 3];
  numList.forEach(myPrint);

  // 箭头函数
  numList.forEach((item) => print(item + 1));

  // 立即执行函数
  ((int n) {
    print(n);
  })(20);
}
