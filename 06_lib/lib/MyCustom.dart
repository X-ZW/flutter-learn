// library MyCustom; 建议小写字母+下划线 flutter中可能有问题
library my_custom;

class MyCustom {
  String name = 'MyCustom';

  static num version = 1.0;

  void info() {
    print('我是自定义库');
  }
}
