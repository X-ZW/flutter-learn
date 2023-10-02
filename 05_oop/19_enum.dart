/// 枚举
/// 枚举是数量固定的常量值，通过enum关键字声明
/// enum Color{red, green, blue}
/// 枚举的values常量，可以获取所有枚举值列表
/// List<Color> colors = Color.values;
/// 可以通过index获取值的索引
/// assert(color.green.index == 1);
///

enum Color { red, green, blue }

void main(List<String> args) {
  // 通过index 返回枚举中具体常量的值ƒ
  print(Color.red.index);

  // 通过values，返回常量列表
  print(Color.values);
  List<Color> colors = Color.values;
  print(colors);

  // 通过下标，访问列表中的内容
  print(colors[0]);

  colors.forEach((element) {
    print(element);
  });
}
