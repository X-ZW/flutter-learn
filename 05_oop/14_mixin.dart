/// Dart类与对象-混入（Mixin）
/// 混入（Mixin）是一段公共代码。混入有两种声明模式：
///   将类当作混入 class MixinA{...}
///     作为Mixin的类只能继承自Object，不能继承其他类
///     作为Mixin的类不能有构造函数
///   使用mixin关键字声明 mixin MixinB{...}
/// 混入（Mixin）可以提高代码复用的效率，普通类可以通过with来使用混入
///   class MyClass with MixinA,MixinB{...}
/// 使用多个混入时，后引入的混入会覆盖之前混入中的重复内容
///   MixinA和MixinB中都有hello()方法，MyClass会使用MixinB中的
///

class Father {}

// mixin class MixinA extends Father { 用作混入的类，不能继承除了 Object 以外的其他类
// mixin class MixinA extends Object { 用作混入的类，不能继承除了 Object 以外的其他类
mixin class MixinA {
  // 将类当作混入，相比视频，需要多添加一个mixin
  String name = 'Mixin A';

  // MixinA(){ // 用作混入的类，不能拥有构造函数

  // }

  void printA() {
    print('A');
  }
}

mixin MixinB {
  String name = 'Mixin B';

  void printB() {
    print('B');
  }
}

class MyClass with MixinA, MixinB {}

void main(List<String> args) {
  MyClass myClass = new MyClass();
  myClass.printA();
  myClass.printB();

  // 后引入的混入，会覆盖之前引入的混入中重复的内容
  print(myClass.name);
}
