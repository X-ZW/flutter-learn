// show 后面指定包含引入的内容
import 'lib/common.dart' show f1, f3;

void main(List<String> args) {
  f1();
  // f2(); // 会报错
  f3();
}
