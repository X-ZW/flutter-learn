/// 初始化列表
/// 作用：在构造函数中设置属性的默认值
/// 时机：在构造函数体执行之前执行
/// 语法：使用逗号分隔初始化表达式
/// 场景：常用于设置final常量的值

class Rect {
  int height;
  int width;

  // Rect(this.height, this.width)

  // Rect([int height = 2, int width = 10]) {
  //   this.height = height;
  //   this.width = width;
  // }

  // 初始化列表
  Rect()
      : height = 4,
        width = 10 {
    print('${this.height}');
  }
}

class Point {
  double x, y, z;
  Point(this.x, this.y, this.z);

  // 初始化列表的特殊用法（重定向构造函数）;
  Point.twoD(double x, double y) : this(x, y, 0);
}

void main(List<String> args) {
  var r = new Rect();

  var p = new Point(1, 2, 3);

  print(p.z);

  var p2 = new Point.twoD(4, 5);
  print(p.z);
}
