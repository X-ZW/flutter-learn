/// 泛型类

class CommonClass {
  Set s = new Set<int>();

  void add(int value) {
    this.s.add(value);
  }

  void info() {
    print(this.s);
  }
}

// 实现泛型类
class GenericsClass<T> {
  Set s = new Set<T>();

  void add(T value) {
    this.s.add(value);
  }

  void info() {
    print(this.s);
  }
}

void main(List<String> args) {
  CommonClass c = new CommonClass();
  c
    ..add(1)
    ..add(1);
  c.info();

  GenericsClass g = new GenericsClass<int>();
  g
    ..add(2)
    ..add(3);
  g.info();

  // Set s = new Set<int>();
  // 字面量形式的泛型
  Set s = <int>{};
  s.add(3);
  s.add('3'); // 会报错
}
