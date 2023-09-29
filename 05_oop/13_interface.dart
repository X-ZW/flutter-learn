/// Dart类与对象-接口
/// 接口在Dart中就是一个类（只是方法不同）
///   与Java不同，Java中的接口需要用interface关键字声明；Dart中不需要
///   接口可以是任意类，但一般使用抽象类做接口
/// 一个类是可以实现（implement）多个接口，多个接口用逗号分隔
///   class MyClass implement Interface1,Interface2{...}
///   接口可以堪称一个个小零件，类实现接口就相当于组装零件
/// 普通类实现接口后，必须重写接口中所有的属性和方法

abstract class Processor {
  late String cores;
  arch(String name);
}

abstract class Camera {
  late String resolution;
  brand(String name);
}

// 通过普通类实现接口
class Phone implements Processor, Camera {
  @override
  String cores;
  @override
  String resolution;
  @override
  Phone(this.cores, this.resolution);

  arch(String name) {
    print('芯片 $name');
  }

  @override
  brand(String name) {
    print('品牌 $name');
  }
}

void main(List<String> args) {
  Phone p = new Phone('4', '1e');
  p.arch('5nm');
}
