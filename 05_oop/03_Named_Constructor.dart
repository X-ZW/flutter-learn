class Point {
  late num x, y; // 与视频不一致，skd版本导致，多了一个late

  Point(this.x, this.y);

  Point.origin() {
    x = 0;
    y = 0;
  }
  // 命名构造函数
  Point.fromJson({x = 0, y = 0}) {
    // 与视频不一致，视频为{x:0,y:0}
    this.x = x;
    this.y = y;
  }
}

void main(List<String> args) {
  Point p1 = new Point.origin();
  print(p1.x);

// 手动设置坐标
  Point p2 = Point.fromJson(x: 10, y: 0);
  print(p2.x);
}
