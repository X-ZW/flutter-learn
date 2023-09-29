class Point {
  // num x;
  // num y;
  num? x, y;

  // 普通构造函数
  // Point(num x, num y) {
  //   print('默认构造函数，第一个被执行');
  //   // this.x = 0; // this可以省略， 当命名指向有歧义的时候，this不能省略
  //   // this.y = 0;
  //   x = x;
  //   y = y;
  // }

  Point(this.x, this.y);
}

void main(List<String> args) {}
