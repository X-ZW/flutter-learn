/// Getter and Setter

class Circle {
  final double PI = 3.1415;
  late num r;

  Circle(this.r);

  // num area() {
  //   return this.PI * this.r * this.r;
  // }

  // 使用get 声明的方法，不能有小括号
  num get area {
    return this.PI * this.r * this.r;
  }

  // Setter
  set setR(v) {
    print('通过setter 修改属性');
    this.r = v;
  }
}

void main(List<String> args) {
  var c = new Circle(10);
  print(c.area);

  c.setR = 20;
  print(c.area);
}
