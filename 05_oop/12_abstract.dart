/// Dart类与对象-抽象类
/// 抽象类是用abstract关键字修饰的类
/// 抽象类的作用是充当普通类的模板，约定一些必要的属性和方法
/// 抽象方法是之没有方法体的方法
///   抽象类中一般都有抽象方法，也可以没有抽象方法
///   普通类中，不能有抽象方法
/// 抽秀类不能被实例化（不能被new）
/// 抽象类可以被普通类继承（extends）
///   如果普通类继承抽象类，必须实现抽象类中所有的抽象方法
/// 抽象类还可以充当接口被实现（implement）
///   如果把抽象类当作接口实现的话，普通类必须得实现抽象类里面定义的所有属性和方法

abstract class Phone {
  // 声明抽象方法
  void processor(); // 手机的处理器

  void camera(); // 手机的摄像头

  // 把上面两个方法全部注释也可以，说明，抽象类中，可以有抽象方法，也可以没有抽象方法，一般来说抽象类都有抽象方法

  void info() {
    print('抽象类中的普通方法');
  }
}

class Xiaomi extends Phone {
  // 普通类继承了抽象类，就必须实现抽象类中所有的抽象方法
  @override
  void processor() {
    print('小米用的骁龙处理器');
  }

  @override
  void camera() {
    print('小米用的三星的摄像头');
  }
}

class Huawei extends Phone {
  // 普通类继承了抽象类，就必须实现抽象类中所有的抽象方法
  @override
  void processor() {
    print('华为用的麒麟处理器');
  }

  @override
  void camera() {
    print('小米用的徕卡摄像头');
  }
}

void main(List<String> args) {
  // var p = new Phone(); // 报错，抽象类不能被实例化

  Xiaomi m4 = new Xiaomi();
}
