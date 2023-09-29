/// 元数据
///   元数据以@开头，可以给代码标记一些额外的信息
///     元数据可以用来库，类，构造器，函数，字段，参数或变量声明前面
///   @override（重写）
///     某方法添加该注解后，表示重写了父类中的同名方法
///   @required（必填）
///     可以通过@required来注解Dart中的命名参数，用来指示它是必填参数
///   @derpecated（弃用）
///     若某类或某方法加上该注解之火，表示此方法或类不再建议使用

class Phone {
  @deprecated
  activate() {
    print('老版开机，会在将来的版本中删除');
    turnOn();
  }

  turnOn() {
    print('开机');
  }
}

void main(List<String> args) {
  Phone p = new Phone();
  p.activate();
}
