// hide 会隐藏后面的内容
import 'lib/common.dart' hide f1, f3;

void main(List<String> args) {
  // f1(); // 会报错
  f2();
  // f3(); // 会报错
}
