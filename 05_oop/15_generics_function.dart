/// 泛型
/// 泛型时再函数，类，接口中指定宽泛数据类型的语法
///   泛型函数
///   泛型类
///   泛型接口
/// 通常，在尖括号中，使用一个字母来代表类型，例如E，T，S，K和V等
///   返回函数类型 函数名<输入类型>(参数类型 参数) {...}
///   T getData<T>(T value) { return value} example：getData<int>(12)
/// 作用：减少重复代码


// 泛型函数
T getData<T>(T value) {
  return value;
}

// 只约定参数类型，不约定函数返回值类型
getData2<T>(T value) {
  return value;
}

void main(List<String> args) {
  print(getData<String>('12'));
  print(getData<num>(12));
  print(getData<List>([1, 2, 3]));
}